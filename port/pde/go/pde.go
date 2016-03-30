package main

import (
	"flag"
	"fmt"
	"io"
	"io/ioutil"
	"os"
	"os/exec"
	"path/filepath"
)

var (
	name    = "pde"
	version = "0.2.0"

	flagset   = flag.NewFlagSet(name, flag.ContinueOnError)
	isHelp    = flagset.Bool("help", false, "")
	isVersion = flagset.Bool("version", false, "")
)

func init() {
	flagset.SetOutput(ioutil.Discard)
	flagset.BoolVar(isHelp, "h", false, "")
	flagset.BoolVar(isVersion, "v", false, "")
}

func printUsage() {
	fmt.Fprintf(os.Stderr, `
Usage: %s [OPTION]... SRC
Execute processing program quickly.

Options:
  -h, --help      display this help text and exit
  -v, --version   output version information and exit
`[1:], name)
}

func printVersion() {
	fmt.Fprintf(os.Stderr, "%s\n", version)
}

func printErr(err interface{}) {
	fmt.Fprintf(os.Stderr, "%s: %s\n", name, err)
}

func guideToHelp() {
	fmt.Fprintf(os.Stderr, "Try '%s --help' for more information.\n", name)
}

func isFile(path string) bool {
	_, err := os.Stat(path)
	return err == nil
}

func copyFile(srcPath, dstPath string) error {
	src, err := os.Open(srcPath)
	if err != nil {
		return err
	}
	defer src.Close()

	dst, err := os.Create(dstPath)
	if err != nil {
		return err
	}
	defer dst.Close()

	_, err = io.Copy(dst, src)
	return err
}

func do(srcPath string) error {
	rootPath, err := ioutil.TempDir("", "")
	if err != nil {
		return err
	}
	defer os.RemoveAll(rootPath)

	sketchPath := filepath.Join(rootPath, "sketch")
	if err = os.Mkdir(sketchPath, 0755); err != nil {
		return err
	}

	outputPath := filepath.Join(rootPath, "output")
	if err = os.Mkdir(outputPath, 0755); err != nil {
		return err
	}

	programPath := filepath.Join(sketchPath, "sketch.pde")
	if err = copyFile(srcPath, programPath); err != nil {
		return err
	}

	c := exec.Command("processing-java",
		fmt.Sprintf("--sketch=%s", sketchPath),
		fmt.Sprintf("--output=%s", outputPath),
		"--force",
		"--run")
	c.Stdin = os.Stdin
	c.Stdout = os.Stdout
	c.Stderr = os.Stderr
	return c.Run()
}

func main() {
	if err := flagset.Parse(os.Args[1:]); err != nil {
		printErr(err)
		guideToHelp()
		os.Exit(2)
	}
	if *isHelp {
		printUsage()
		os.Exit(0)
	}
	if *isVersion {
		printVersion()
		os.Exit(0)
	}

	if flagset.NArg() < 1 {
		printErr("no input file")
		os.Exit(2)
	}

	srcPath := flagset.Arg(0)
	if !isFile(srcPath) {
		printErr(fmt.Sprintf("%s: no such file", srcPath))
		os.Exit(2)
	}

	if err := do(srcPath); err != nil {
		printErr(err)
		os.Exit(1)
	}
}

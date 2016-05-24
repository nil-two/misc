import std.algorithm;
import std.getopt;
import std.stdio;
import std.array;
import std.string;

string usage = q"[
Usage: rl [OPTION]... [FILE]...
Reverse lines of FILE(s), or standard input.

Options:
  -d, --delimiter=DELIM    delimit lines by DELIM
      --help               display this help text and exit
      --version            display version information and exit
]".strip;

string ver = "0.2.0";

string reversed(string s, string delimiter) {
	return s.split(delimiter).reverse.join(delimiter);
}

void writeReversedLines(File file, string delimiter) {
	foreach (line; file.byLine()) {
		auto s = cast(string)line;
		writeln(reversed(s, delimiter));
	}
}

int main(string[] args) {
	auto delimiter = "";
	auto isHelp    = false;
	auto isVersion = false;

	auto opts = getopt(
		args,
		"delimiter|d", &delimiter,
		"help",        &isHelp,
		"version",     &isVersion,
	);

	if (isHelp) {
		stderr.writeln(usage);
		return 0;
	}
	if (isVersion) {
		stderr.writeln(ver);
		return 0;
	}

	auto pathes = args[1 .. $];
	if (pathes.length < 1) {
		writeReversedLines(stdin, delimiter);
	} else {
		foreach (path; pathes) {
			auto file = File(path);
			writeReversedLines(file, delimiter);
		}
	}
	return 0;
}

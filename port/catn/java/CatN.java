import java.io.InputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Scanner;

class CatN {
    public static String commandName = "catn";
    public static String usage       = "Usage: catn N [FILE]...";

    public static void printUsage() {
        System.err.println(usage);
    }

    public static void printError(Exception e) {
        System.err.println(e.toString());
    }

    public static String readAllContents(String path) throws IOException {
        return new String(Files.readAllBytes(Paths.get(path)));
    }

    public static String readAllContents(InputStream in) {
        return (new Scanner(in)).useDelimiter("\\Z").next() + "\n";
    }

    public static void main(String args[]) {
        if (args.length < 1 || args[0].equals("--help")) {
            printUsage();
            System.exit(2);
        }

        int n = 0;
        try {
            n = Integer.parseInt(args[0]);
        } catch (Exception e) {
            printError(e);
            System.exit(1);
        }

        String src = null;
        try {
            if (args.length < 2) {
                src = readAllContents(System.in);
            } else {
                StringBuilder sb = new StringBuilder();
                for (int i = 1; i < args.length; i++) {
                    sb.append(readAllContents(args[i]));
                }
                src = sb.toString();
            }
        } catch (Exception e) {
            printError(e);
            System.exit(1);
        }

        if (n < 0) {
            for (;;) {
                System.out.print(src);
            }
        } else {
            for (int i = 0; i < n; ++i) {
                System.out.print(src);
            }
        }
    }
}

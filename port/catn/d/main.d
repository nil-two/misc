import std.algorithm.iteration;
import std.conv;
import std.file;
import std.stdio;
import std.string;

string usage = "Usage: catn N [FILE]...";

string readARGF(string[] args) {
	if (args.length < 1) {
		return stdin.byLineCopy(KeepTerminator.yes).join("");
	} else {
		return args.map!(arg => arg.readText).join("");
	}
}

int main(string[] args) {
	if (args.length < 2 || args[1] == "--help") {
		stderr.writeln(usage);
		return 2;
	}

	int n = to!int(args[1]);
	string src = readARGF(args[2 .. $]);
	if (n < 0) {
		for (;;) {
			write(src);
		}
	} else {
		for (int i = 0; i < n; i++) {
			write(src);
		}
	}
	return 0;
}

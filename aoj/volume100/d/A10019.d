import std.algorithm;
import std.conv;
import std.stdio;
import std.string;

void main() {
	for (;;) {
		string line = readln.strip;
		if (line == "0") {
			break;
		}

		int sum = line.split("").map!(to!int).sum();
		writeln(sum);
	}
}

import std.algorithm;
import std.range;
import std.stdio;
import std.string;

void main() {
	string target = readln.strip;

	int count = 0;
	foreach (line; stdin.byLine) {
		foreach (word; line.split) {
			if (word.toLower == target) {
				count++;
			}
		}
	}
	writeln(count);
}

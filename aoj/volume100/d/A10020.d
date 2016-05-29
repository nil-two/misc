import std.algorithm;
import std.range;
import std.stdio;
import std.string;

void main() {
	char[] chars = [
		'a', 'b', 'c', 'd', 'e', 'f',
		'g', 'h', 'i', 'j', 'k', 'l',
		'm', 'n', 'o', 'p', 'q', 'r',
		's', 't', 'u', 'v', 'w', 'x',
		'y', 'z',
	];

	int[char] counts;
	foreach (ch; chars) {
		counts[ch] = 0;
	}

	foreach (line; stdin.byLine) {
		foreach (ch; line.toLower) {
			counts[ch]++;
		}
	}

	foreach (ch; chars) {
		writefln("%c : %d", ch, counts[ch]);
	}
}

import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
	int[] s, t;
	readln; // to skip n
	s = readln.split.map!(to!int).array.sort;
	readln; // to skip q
	t = readln.split.map!(to!int).array.sort;

	writeln(setIntersection(s, t).array.length);
}

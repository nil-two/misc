import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
	readln; // to skip n
	auto nums   = readln.split.map!(to!int).array;
	auto sorted = nums.sort;
	auto result = sorted.map!(to!string).array.join(" ");
	writeln(result);
}

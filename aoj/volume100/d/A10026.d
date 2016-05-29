import std.algorithm;
import std.array;
import std.conv;
import std.math;
import std.stdio;
import std.string;

void main() {
	for (;;) {
		int nNums;
		readf("%d\n", &nNums);
		if (nNums == 0) {
			break;
		}

		auto nums     = readln.split.map!(to!double).array;
		auto average  = nums.sum / nums.length;
		auto variance = nums.map!(n => (n - average).pow(2)).sum / nums.length;

		auto standarddeviation = variance.sqrt;
		writefln("%.6f", standarddeviation);
	}
}

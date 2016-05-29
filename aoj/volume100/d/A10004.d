import std.algorithm;
import std.stdio;

void main() {
	auto a = [0, 0, 0];
	readf("%d %d %d", &a[0], &a[1], &a[2]);

	a.sort();
	writefln("%d %d %d", a[0], a[1], a[2]);
}

import std.stdio;

void main() {
	int a, b;
	readf("%d %d", &a, &b);

	writefln("%d %d %.6f",
			a / b,
			a % b,
			cast(double)a / cast(double)b,
			);
}

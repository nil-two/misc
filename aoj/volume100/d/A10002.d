import std.stdio;

void main() {
	int a, b;
	readf("%d %d", &a, &b);

	auto area = a * b;
	auto perimeter = 2*a + 2*b;
	writefln("%d %d", area, perimeter);
}

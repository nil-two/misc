import std.stdio;

void main() {
	int a, b;
	readf("%d %d", &a, &b);

	if (a == b) {
		writeln("a == b");
	} else if (a < b) {
		writeln("a < b");
	} else if (a > b) {
		writeln("a > b");
	}
}

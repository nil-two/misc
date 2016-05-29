import std.algorithm;
import std.stdio;

void main() {
	int a, b;
	for (int i = 1;; i++) {
		readf("%d %d\n", &a, &b);
		if (a == 0 && b == 0) {
			break;
		}
		if (a > b) {
			swap(a, b);
		}
		writefln("%d %d", a, b);
	}
}

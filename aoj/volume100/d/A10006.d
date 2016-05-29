import std.stdio;

void main() {
	int n;
	for (int i = 1;; i++) {
		readf("%d\n", &n);
		if (n == 0) {
			break;
		}
		writefln("Case %d: %d", i, n);
	}
}

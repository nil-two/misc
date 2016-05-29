import std.stdio;

int countWays(int n, int x) {
	int count = 0;
	for (int a = 1;   a <= n; a++)
	for (int b = a+1; b <= n; b++)
	for (int c = b+1; c <= n; c++)
		if (a+b+c == x)
			count++;
	return count;
}

void main() {
	int n, x;
	for (;;) {
		readf("%d %d\n", &n, &x);
		if (n == 0 && x == 0) {
			break;
		}

		writeln(countWays(n, x));
	}
}

import std.stdio;

void main() {
	int a, b;
	string op;
	for (;;) {
		readf("%d %s %d\n", &a, &op, &b);
		if (op == "?") {
			break;
		}

		int result;
		final switch (op) {
		case "+":
			result = a + b;
			break;
		case "-":
			result = a - b;
			break;
		case "*":
			result = a * b;
			break;
		case "/":
			result = a / b;
			break;
		}
		writeln(result);
	}
}

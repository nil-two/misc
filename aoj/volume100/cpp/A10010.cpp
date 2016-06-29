#include <iostream>

auto main() -> int {
	int a, b;
	char op;
	for (;;) {
		std::cin >> a >> op >> b;
		if (op == '?') {
			break;
		}

		int result;
		switch (op) {
		case '+':
			result = a + b;
			break;
		case '-':
			result = a - b;
			break;
		case '*':
			result = a * b;
			break;
		case '/':
			result = a / b;
			break;
		}
		std::cout << result << std::endl;
	}
	return 0;
}

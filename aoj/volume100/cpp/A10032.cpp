#include <iostream>
#include <stack>

auto main() -> int {
	std::stack<char> stack;
	for (;;) {
		std::string order;
		std::cin >> order;
		if (order == "quit") {
			break;
		}

		if (order == "push") {
			char block;
			std::cin >> block;
			stack.push(block);
		}

		if (order == "pop") {
			char block = stack.top();
			std::cout << block << std::endl;
			stack.pop();
		}
	}
	return 0;
}

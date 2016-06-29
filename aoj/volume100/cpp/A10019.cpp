#include <iostream>

auto main() -> int {
	std::string numbers;
	for (;;) {
		std::cin >> numbers;
		if (numbers == "0") {
			break;
		}

		int sum = 0;
		for (int i = 0; i < numbers.length(); ++i) {
			sum += numbers[i] - '0';
		}
		std::cout << sum << std::endl;
	}
	return 0;
}

#include <iostream>
#include <cmath>

auto main() -> int {
	int N;
	std::cin >> N;

	if (N < 2) {
		std::cout << "0" << std::endl;
	} else {
		std::cout << (N%2 == 0 ? "1" : "7");
		for (int i = 1; i < N/2; ++i) {
			std::cout << "1";
		}
		std::cout << std::endl;
	}
}

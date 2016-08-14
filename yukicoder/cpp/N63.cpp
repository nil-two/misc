#include <iostream>

auto main() -> int {
	int L, K;
	std::cin >> L >> K;

	int rest = L;
	int eated = 0;
	while (true) {
		rest -= K*2;
		if (rest <= 0) {
			break;
		}
		eated += K;
	}

	std::cout << eated << std::endl;
}

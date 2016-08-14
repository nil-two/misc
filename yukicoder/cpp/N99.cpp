#include <iostream>

auto main() -> int {
	int N;
	std::cin >> N;

	int X;
	int n_even = 0;
	int n_odd  = 0;
	for (int i = 0; i < N; ++i) {
		std::cin >> X;
		if (X%2 == 0) {
			n_even++;
		} else {
			n_odd++;
		}
	}

	std::cout << std::abs(n_even-n_odd) << std::endl;
}

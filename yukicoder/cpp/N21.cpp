#include <iostream>

auto main() -> int {
	int N, K;
	std::cin >> N >> K;

	int n;
	int max = 0;
	int min = 1000;
	for (int i = 0; i < N; ++i) {
		std::cin >> n;
		max = n > max ? n : max;
		min = n < min ? n : min;
	}

	std::cout << max-min << std::endl;
}

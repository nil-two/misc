#include <iostream>

auto main() -> int {
	int N;
	std::cin >> N;

	int L;
	int scores[7] = {};
	for (int i = 0; i < N; ++i) {
		std::cin >> L;
		scores[L]++;
	}

	int max_i = 0;
	for (int i = 1; i <= 6; ++i) {
		if  (scores[i] >= scores[max_i]) {
			max_i = i;
		}
	}

	std::cout << max_i << std::endl;
}

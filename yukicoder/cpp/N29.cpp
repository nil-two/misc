#include <iostream>

auto main() -> int {
	int counts[11] = {};

	int n;
	int a, b, c;
	std::cin >> n;
	for (int i = 0; i < n; ++i) {
		std::cin >> a >> b >> c;
		counts[a]++;
		counts[b]++;
		counts[c]++;
	}

	int n_raises = 0;
	int n_rests  = 0;
	for (int count : counts) {
		n_raises += count / 2;
		n_rests  += count % 2;
	}
	n_raises += n_rests / 4;

	std::cout << n_raises << std::endl;
}

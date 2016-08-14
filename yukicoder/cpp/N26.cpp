#include <iostream>

auto main() -> int {
	int n, m;
	std::cin >> n >> m;

	int p, q;
	for (int i = 0; i < m; ++i) {
		std::cin >> p >> q;
		if (p == n) {
			n = q;
			continue;
		}
		if (q == n) {
			n = p;
			continue;
		}
	}

	std::cout << n << std::endl;
}

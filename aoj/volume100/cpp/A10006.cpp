#include <cstdio>
#include <iostream>

auto main() -> int {
	int n;
	for (int i = 1;; ++i) {
		std::cin >> n;
		if (n == 0) {
			break;
		}

		std::printf("Case %d: %d\n", i, n);
	}
	return 0;
}

#include <cstdio>
#include <iostream>

auto main() -> int {
	int a, b;
	std::cin >> a >> b;
	std::printf("%d %d %.6f\n",
		a / b,
		a % b,
		static_cast<double>(a) / static_cast<double>(b));
	return 0;
}

#include <iostream>

auto main() -> int {
	int n, x;
	for (;;) {
		std::cin >> n >> x;
		if (n == 0 && x == 0) {
			break;
		}

		int count = 0;
		for (int a = 1;   a <= n; ++a)
		for (int b = a+1; b <= n; ++b)
		for (int c = b+1; c <= n; ++c)
			if (a + b + c == x)
				count++;

		std::cout << count << std::endl;
	}
	return 0;
}

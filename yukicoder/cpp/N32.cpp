#include <iostream>

auto main() -> int {
	int L, M, N;
	std::cin >> L >> M >> N;

	int n1    = N;
	int n25   = M;
	int n100  = L;
	int n1000 = 0;

	n25   += n1   / 25; n1   %= 25;
	n100  += n25  /  4; n25  %=  4;
	n1000 += n100 / 10; n100 %= 10;

	std::cout << n1+n25+n100 << std::endl;
}

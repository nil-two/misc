#include <iostream>

auto main() -> int {
	long F0, F1, N;
	std::cin >> F0 >> F1 >> N;

	long F[3] = {F0, F1, F0^F1};
	long FN   = F[N%3];
	std::cout << FN << std::endl;
}

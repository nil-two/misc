#include <iostream>

auto main() -> int {
	long W, D;
	std::cin >> W >> D;

	long workload = W;
	for (int i = 0; i < D-1; ++i) {
		workload -= workload / ((D-i)*(D-i));
	}
	std::cout << workload << std::endl;
}

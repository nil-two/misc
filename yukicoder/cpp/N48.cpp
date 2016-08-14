#include <iostream>
#include <cmath>

auto main() -> int {
	double X, Y, L;
	std::cin >> X >> Y >> L;

	int n_orders = 0;
	if (Y == 0) {
		if (X != 0) {
			n_orders += 1;
			n_orders += std::ceil(std::abs(X) / L);
		}
	} else if (Y > 0) {
		n_orders += std::ceil(Y / L);
		if (X != 0) {
			n_orders += 1;
			n_orders += std::ceil(std::abs(X) / L);
		}
	} else if (Y < 0) {
		n_orders += 1;
		n_orders += std::ceil(std::abs(X) / L);
		n_orders += 1;
		n_orders += std::ceil(std::abs(Y) / L);
	}

	std::cout << n_orders << std::endl;
}

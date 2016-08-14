#include <iostream>

auto main() -> int {
	double D, P;
	std::cin >> D >> P;

	int price = D + (D * P/100.0);
	std::cout << price << std::endl;
}

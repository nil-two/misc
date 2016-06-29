#include <iostream>

auto main() -> int {
	std::string cards;
	int m;
	int h;
	for (;;) {
		std::cin >> cards;
		if (cards == "-") {
			break;
		}

		std::cin >> m;
		for (int i = 0; i < m; ++i) {
			std::cin >> h;
			cards = cards.substr(h, cards.length() - h) + cards.substr(0, h);
		}

		std::cout << cards << std::endl;
	}
	return 0;
}

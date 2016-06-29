#include <iostream>

auto main() -> int {
	int a_score = 0;
	int b_score = 0;
	int n_competition;

	std::cin >> n_competition;
	for (int i = 0; i < n_competition; ++i) {
		std::string a_card;
		std::string b_card;
		std::cin >> a_card >> b_card;

		int result = a_card.compare(b_card);
		if (result == 0) {
			a_score += 1;
			b_score += 1;
		} else if (result > 0) {
			a_score += 3;
		} else if (result < 0) {
			b_score += 3;
		}
	}

	std::cout << a_score << " " << b_score << std::endl;
	return 0;
}

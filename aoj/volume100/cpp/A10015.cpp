#include <iostream>
#include <vector>
#include <unordered_set>
#include <sstream>

auto suits = {'S', 'H', 'C', 'D'};
auto ranks = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13};

auto to_card(char suit, int rank) -> std::string {
	std::stringstream ss;
	ss << suit << " " << rank;
	return ss.str();
}

auto main() -> int {
	std::unordered_set<std::string> missing_cards;
	for (auto suit : suits) {
		for (auto rank : ranks) {
			std::string card = to_card(suit, rank);
			missing_cards.insert(card);
		}
	}

	int n_cards;
	std::cin >> n_cards;
	for (int i = 0; i < n_cards; ++i) {
		char suit;
		int rank;
		std::cin >> suit >> rank;
		std::string card = to_card(suit, rank);
		missing_cards.erase(card);
	}

	for (auto suit : suits) {
		for (auto rank : ranks) {
			std::string card = to_card(suit, rank);
			if (missing_cards.count(card) != 0) {
				std::cout << card << std::endl;
			}
		}
	}
	return 0;
}

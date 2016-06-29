#include <algorithm>
#include <iostream>

auto main() -> int {
	int n_words;
	std::string word;
	std::vector<std::string> words;

	std::cin >> n_words;
	for (int i = 0; i < n_words; ++i) {
		std::cin >> word;
		words.push_back(word);
	}
	std::sort(words.begin(), words.end());

	std::cout << words[0] << std::endl;
	return 0;
}

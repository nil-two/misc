#include <cstdio>
#include <iostream>
#include <locale>
#include <unordered_map>

auto main() -> int {
	std::unordered_map<char, int> counts;

	std::string line;
	while (std::getline(std::cin, line)) {
		for (int i = 0; i < line.length(); ++i) {
			char ch = std::tolower(line[i]);
			counts[ch]++;
		}
	}

	for (char ch = 'a'; ch <= 'z'; ++ch) {
		std::printf("%c : %d\n", ch, counts[ch]);
	}
	return 0;
}

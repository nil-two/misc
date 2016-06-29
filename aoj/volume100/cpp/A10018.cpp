#include <iostream>
#include <locale>

auto main() -> int {
	std::string text;
	std::getline(std::cin, text);

	for (int i = 0; i < text.length(); ++i) {
		if (std::isupper(text[i])) {
			text[i] = std::tolower(text[i]);
		} else if (std::islower(text[i])) {
			text[i] = std::toupper(text[i]);
		}
	}

	std::cout << text << std::endl;
	return 0;
}

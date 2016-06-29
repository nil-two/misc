#include <algorithm>
#include <iostream>
#include <locale>

auto main() -> int {
	int count = 0;
	std::string w;
	std::string t;

	std::cin >> w;
	for (;;) {
		std::cin >> t;
		if (t == "END_OF_TEXT") {
			break;
		}

		std::transform(t.begin(), t.end(), t.begin(), ::tolower);
		if (t == w) {
			count++;
		}
	}

	std::cout << count << std::endl;
	return 0;
}

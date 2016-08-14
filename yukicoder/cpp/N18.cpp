#include <iostream>;

auto main() -> int {
	std::string s;
	std::cin >> s;
	for (int i = 0; i < s.length(); ++i) {
		char moved_ch     = s[i] - (i+1)%26;
		char encrypted_ch = moved_ch >= 'A' ? moved_ch : moved_ch+26;
		std::cout << encrypted_ch;
	}
	std::cout << std::endl;
}

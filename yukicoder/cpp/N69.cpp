#include <algorithm>
#include <iostream>

bool is_anagram(std::string a, std::string b) {
	int a_len = a.size();
	int b_len = a.size();
	if (a_len != b_len) {
		return false;
	}

	int counts[26] = {};
	for (int i = 0; i < a_len; ++i) {
		counts[a[i]-'a']++;
		counts[b[i]-'a']--;
	}
	for (int i = 0; i < 26; ++i) {
		if (counts[i] != 0) {
			return false;
		}
	}
	return true;
}

auto main() -> int {
	std::string A, B;
	std::cin >> A >> B;

	std::cout << (is_anagram(A, B) ? "YES" : "NO") << std::endl;
}

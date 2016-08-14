#include <algorithm>
#include <iostream>

auto main() -> int {
	int total_typed   = 0;
	int total_missing = 0;

	const int    possible_typed     = 12;
	const double letter_required_ms = 1000.0 / possible_typed;

	int n;
	int t;
	std::string s;
	std::cin >> n;
	for (int i = 0; i < n; ++i) {
		std::cin >> t >> s;
		int typed   = std::min(static_cast<int>(t / letter_required_ms), static_cast<int>(s.size()));
		int missing = std::max(static_cast<int>(s.size() - typed),       static_cast<int>(0));
		total_typed   += typed;
		total_missing += missing;
	}

	std::cout << total_typed << " " << total_missing << std::endl;
}

#include <algorithm>
#include <iostream>
#include <sstream>

auto main() -> int {
	int n_items;
	std::cin >> n_items;

	std::vector<int> items(n_items);
	for (int i = 0; i < n_items; ++i) {
		std::cin >> items[i];
	}
	std::sort(items.begin(), items.end());

	std::stringstream ss;
	for (int i = 0; i < n_items; ++i) {
		if (i != 0) {
			ss << " ";
		}
		ss << items[i];
	}
	std::cout << ss.str() << std::endl;
	return 0;
}

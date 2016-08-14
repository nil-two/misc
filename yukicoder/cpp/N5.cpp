#include <algorithm>
#include <iostream>
#include <vector>

auto main() -> int {
	int l;
	int n;
	std::cin >> l;
	std::cin >> n;

	std::vector<int> ws(n);
	for (int i = 0; i < n; ++i) {
		std::cin >> ws[i];
	}

	std::sort(ws.begin(), ws.end());

	int last_i = 0;
	int total_width = 0;
	for (last_i = 0; last_i < n; ++last_i) {
		total_width += ws[last_i];
		if (total_width == l) {
			last_i++;
			break;
		} else if (total_width > l) {
			break;
		}
	}

	std::cout << last_i << std::endl;
}

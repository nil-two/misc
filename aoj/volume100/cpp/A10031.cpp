#include <algorithm>
#include <iostream>
#include <unordered_set>
#include <vector>

auto main() -> int {
	int n;
	std::cin >> n;
	std::vector<int> s(n);
	for (int i = 0; i < n; ++i) {
		std::cin >> s[i];
	}
	std::sort(s.begin(), s.end());

	int q;
	std::cin >> q;
	std::vector<int> t(q);
	for (int i = 0; i < q; ++i) {
		std::cin >> t[i];
	}
	std::sort(t.begin(), t.end());

	std::vector<int> intersect;
	std::set_intersection(s.begin(), s.end(), t.begin(), t.end(),
			  std::back_inserter(intersect));

	std::cout << intersect.size() << std::endl;
	return 0;
}

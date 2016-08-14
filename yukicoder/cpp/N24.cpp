#include <iostream>
#include <vector>

auto main() -> int {
	int N;
	std::cin >> N;

	std::vector<int> scores(10);
	std::vector<int> nums(4);
	std::string R;
	for (int i = 0; i < N; ++i) {
		for (int &n : nums) {
			std::cin >> n;
		}
		std::cin >> R;

		for (int n : nums) {
			switch (R[0]) {
			case 'Y': scores[n]++; break;
			case 'N': scores[n]--; break;
			}
		}
	}

	int max_n = 0;
	for (int n = 1; n < 10; n++) {
		if (scores[n] > scores[max_n]) {
			max_n = n;
		}
	}

	std::cout << max_n << std::endl;
}

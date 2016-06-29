#include <cmath>
#include <cstdio>
#include <iostream>
#include <vector>

auto main() -> int {
	int n_scores;
	for (;;) {
		std::cin >> n_scores;
		if (n_scores == 0) {
			break;
		}

		std::vector<int> scores(n_scores);
		for (int i = 0; i < n_scores; ++i) {
			std::cin >> scores[i];
		}

		double average = 0.0;
		for (int score : scores) {
			average += score;
		}
		average /= n_scores;

		double variance = 0.0;
		for (int score : scores) {
			variance += std::pow(score - average, 2);
		}
		variance /= n_scores;

		double standard_deviation = std::sqrt(variance);
		std::printf("%.6f\n", standard_deviation);
	}
	return 0;
}

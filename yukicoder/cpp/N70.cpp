#include <iostream>
#include <cstdio>

auto main() -> int {
	int N;
	std::scanf("%d", &N);

	int total_minutes = 0;
	for (int i = 0; i < N; ++i) {
		int H, M, h, m;
		std::scanf("%d:%d %d:%d", &H, &M, &h, &m);

		int a_minutes = H*60 + M;
		int b_minutes = h*60 + m;
		if (a_minutes < b_minutes) {
			total_minutes += b_minutes - a_minutes;
		}
		if (a_minutes > b_minutes) {
			total_minutes += (60*24)-a_minutes + b_minutes;
		}
	}

	std::cout << total_minutes << std::endl;
}


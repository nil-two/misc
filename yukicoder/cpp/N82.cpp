#include <iostream>

auto main() -> int {
	int W, H;
	char C;
	std::cin >> W >> H >> C;

	char patterns[2] = {'W', 'B'};
	int first_i;
	switch (C) {
	case 'W': first_i = 0; break;
	case 'B': first_i = 1; break;
	}

	for (int y = 0; y < H; ++y) {
		for (int x = 0; x < W; ++x) {
			std::cout << patterns[(x+y+first_i)%2];
		}
		std::cout << std::endl;
	}
}

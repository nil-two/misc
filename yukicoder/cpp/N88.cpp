#include <iostream>

auto main() -> int {
	std::string first;
	std::cin >> first;

	std::string players[2] = {"yukiko", "oda"};
	int first_i = first == players[1];

	int total_stones;
	std::string line;
	for (int y = 0; y < 8; ++y) {
		std::cin >> line;
		for (int x = 0; x < 8; ++x) {
			if (line[x] == 'w' || line[x] == 'b') {
				total_stones++;
			}
		}
	}

	std::cout << players[(first_i+total_stones)%2] << std::endl;
}

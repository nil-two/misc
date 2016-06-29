#include <algorithm>
#include <iostream>
#include <vector>

auto main() -> int {
	std::vector<int> nums(3);
	std::cin >> nums[0];
	std::cin >> nums[1];
	std::cin >> nums[2];
	std::sort(nums.begin(), nums.end());

	std::cout << nums[0] << " ";
	std::cout << nums[1] << " ";
	std::cout << nums[2] << std::endl;
	return 0;
}

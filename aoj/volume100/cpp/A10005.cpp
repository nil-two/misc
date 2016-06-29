#include <iostream>
#include <sstream>

auto main() -> int {
	std::stringstream ss;
	for (int i = 0; i < 1000; ++i) {
		ss << "Hello World" << std::endl;
	}
	std::cout << ss.str();
	return 0;
}

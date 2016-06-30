#include <cstdlib>
#include <iostream>
#include <fstream>
#include <sstream>
#include <vector>

const std::string usage = "usage: catn N [FILE]..." ;

auto string_to_int(std::string s) -> int {
	int n;
	std::istringstream buf(s);
	buf >> n;
	return n;
}

auto read_argf(std::vector<std::string> files) -> std::string {
	std::stringstream ss;
	if (files.size() == 0) {
		ss << std::cin.rdbuf();
	} else {
		for (auto file : files) {
			std::ifstream f(file);
			ss << f.rdbuf();
			f.close();
		}
	}
	return ss.str();
}

auto main(int argc, char *argv[]) -> int {
	if (argc == 1) {
		std::cerr << usage << std::endl;
		return 2;
	}

	std::string raw_n(argv[1]);
	if (raw_n == "--help") {
		std::cerr << usage << std::endl;
		return 2;
	}

	std::vector<std::string> files(argc-2);
	for (int i = 0; i < argc-2; i++) {
		files[i] = argv[i+2];
	}

	auto n   = string_to_int(raw_n);
	auto src = read_argf(files);
	if (n < 0) {
		for (;;) {
			std::cout << src;
		}
	} else {
		for (int i = 0; i < n; i++) {
			std::cout << src;
		}
	}
	return 0;
}

#include <iostream>

auto to_grade(int m, int f, int r) -> char {
	if (m == -1 || f == -1)        return 'F';
	else if (m+f >= 80)            return 'A';
	else if (m+f >= 65)            return 'B';
	else if (m+f >= 50)            return 'C';
	else if (m+f >= 30 && r >= 50) return 'C';
	else if (m+f >= 30)            return 'D';
	else                           return 'F';
}

auto main() -> int {
	int m, f, r;
	for (;;) {
		std::cin >> m >> f >> r;
		if (m == -1 && f == -1 && r == -1) {
			break;
		}

		char grade = to_grade(m, f, r);
		std::cout << grade << std::endl;
	}
	return 0;
}

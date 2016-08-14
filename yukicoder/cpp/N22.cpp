#include <iostream>
#include <stack>
#include <vector>

auto main() -> int {
	int N;
	int K;
	std::string S;
	std::cin >> N >> K >> S;

	std::vector<int> corresponing_indexes(N);
	std::stack<int> stack;
	int left, right;
	for (int i = 0; i < N; ++i) {
		switch (S[i]) {
		case '(':
			stack.push(i);
			break;
		case ')':
			left  = stack.top();
			right = i;
			corresponing_indexes[left]  = right;
			corresponing_indexes[right] = left;
			stack.pop();
			break;
		}
	}

	std::cout << corresponing_indexes[K-1]+1 << std::endl;
}

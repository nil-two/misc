#include <stdio.h>
#include <string.h>

enum {
	MAX_WORDS = 1000,
};

typedef struct Player Player;
struct Player {
	int score;
	char words[MAX_WORDS+1];
};

int main() {
	int i;
	int result;
	int noGame;
	Player a = {0};
	Player b = {0};

	scanf("%d", &noGame);
	for (i = 0; i < noGame; i++) {
		scanf("%s", a.words);
		scanf("%s", b.words);
		result = strcmp(a.words, b.words);
		if (result == 0) {
			a.score += 1;
			b.score += 1;
		} else if (result > 0) {
			a.score += 3;
		} else if (result < 0) {
			b.score += 3;
		}
	}

	printf("%d %d\n", a.score, b.score);
	return 0;
}

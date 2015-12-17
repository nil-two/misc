#include <stdio.h>
#include <string.h>

enum {
	MAX_WORDS = 1000,
};

typedef struct Player Player;
struct Player {
	int score;
	char word[MAX_WORDS+1];
};

int main() {
	int i;
	int result;
	int no_games;
	Player a = {0};
	Player b = {0};

	scanf("%d", &no_games);
	for (i = 0; i < no_games; i++) {
		scanf("%s", a.word);
		scanf("%s", b.word);
		result = strcmp(a.word, b.word);
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

#include <stdio.h>
#include <string.h>

enum {
	MAX_CARDS = 200,
};

void shuffle(char *cards, int noCards, int height) {
	char temp[MAX_CARDS+1];
	int border = noCards-height;
	memcpy(temp, cards+height, border);
	memcpy(temp+border, cards, height);
	memcpy(cards, temp, noCards);
}

int main() {
	int si, hi;
	char cards[MAX_CARDS+1];
	int noCards;
	int noShuffle;
	int h;
	for (;;) {
		scanf("%s", cards);
		if (strcmp(cards, "-") == 0)
			break;

		noCards = strlen(cards);
		scanf("%d", &noShuffle);
		for (si = 0; si < noShuffle; si++) {
			scanf("%d", &h);
			shuffle(cards, noCards, h);
		}

		puts(cards);
	}
	return 0;
}

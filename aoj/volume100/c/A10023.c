#include <stdio.h>
#include <string.h>

enum {
	MAX_CARDS = 200,
};

void shuffle(char *cards, int no_cards, int height) {
	char temp[MAX_CARDS+1];
	int border = no_cards - height;
	memcpy(temp, cards + height, border);
	memcpy(temp + border, cards, height);
	memcpy(cards, temp, no_cards);
}

int main() {
	char cards[MAX_CARDS+1];
	int no_cards;
	int no_shuffle_times;
	int i, h;
	for (;;) {
		scanf("%s", cards);
		if (strcmp(cards, "-") == 0)
			break;

		no_cards = strlen(cards);
		scanf("%d", &no_shuffle_times);
		for (i = 0; i < no_shuffle_times; i++) {
			scanf("%d", &h);
			shuffle(cards, no_cards, h);
		}

		puts(cards);
	}
	return 0;
}

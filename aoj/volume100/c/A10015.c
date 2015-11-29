#include <stdio.h>

enum {
	NO_KIND  = 4,
	NO_INDEX = 13,
};

int main() {
	int i, ki, ii;
	char kind;
	int index;

	int noCard;
	int cards[NO_KIND][NO_INDEX];
	for (ki = 0; ki < NO_KIND; ki++)
		for (ii = 0; ii < NO_INDEX; ii++)
			cards[ki][ii] = 1;

	scanf("%d", &noCard);
	for (i = 0; i <= noCard; i++) {
		scanf("%c %d\n", &kind, &index);
		switch (kind) {
		case 'S': cards[0][index-1] = 0; break;
		case 'H': cards[1][index-1] = 0; break;
		case 'C': cards[2][index-1] = 0; break;
		case 'D': cards[3][index-1] = 0; break;
		}
	}

	for (ki = 0; ki < NO_KIND; ki++)
		for (ii = 0; ii < NO_INDEX; ii++)
			if (cards[ki][ii])
				switch (ki) {
				case 0: printf("S %d\n", ii+1); break;
				case 1: printf("H %d\n", ii+1); break;
				case 2: printf("C %d\n", ii+1); break;
				case 3: printf("D %d\n", ii+1); break;
				}
	return 0;
}

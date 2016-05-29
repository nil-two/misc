import std.stdio;

void main() {
	for (;;) {
		string card;
		readf("%s\n", &card);
		if (card == "-") {
			break;
		}

		int nShuffle;
		readf("%d\n", &nShuffle);

		for (int i = 0; i < nShuffle; i++) {
			int h;
			readf("%d\n", &h);

			card = card[h .. $] ~ card[0 .. h];
		}

		writeln(card);
	}
}

import std.stdio;
import std.string;

class Player {
	string card;
	int    score;
}

void main() {
	int nGames;
	readf("%d\n", &nGames);

	auto a = new Player;
	auto b = new Player;
	for (int i = 0; i < nGames; i++) {
		auto cards = readln.strip.split;
		a.card = cards[0];
		b.card = cards[1];
		if (a.card == b.card) {
			a.score += 1;
			b.score += 1;
		} else if (a.card > b.card) {
			a.score += 3;
		} else if (a.card < b.card) {
			b.score += 3;
		}
	}
	writefln("%d %d", a.score, b.score);
}

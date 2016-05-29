import std.algorithm;
import std.stdio;
import std.string;

void main() {
	int nWords;
	readf("%d\n", &nWords);

	string[] words = new string[nWords];
	for (int i = 0; i < nWords; i++) {
		words[i] = readln.strip;
	}

	writeln(words.sort[0]);
}

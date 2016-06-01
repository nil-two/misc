import std.algorithm;
import std.conv;
import std.range;
import std.stdio;
import std.string;
 
string toCard(string kind, string index) {
    return kind ~ " " ~ index;
}
 
void main() {
    string[] kinds   = ["S", "H", "C", "D"];
    string[] indexes = iota(1, 14).map!(to!string).array;
 
    bool[string] cards;
    foreach (kind; kinds) {
        foreach (index; indexes) {
            string card = toCard(kind, index);
            cards[card] = false;
        }
    }
 
    int nCards;
    readf("%d\n", &nCards);
 
    for (int i = 0; i < nCards; i++) {
        string card = readln.strip;
        cards[card] = true;
    }
 
    foreach (kind; kinds) {
        foreach (index; indexes) {
            string card = toCard(kind, index);
            if (!cards[card]) {
                writeln(card);
            }
        }
    }
}

import std.stdio;
import std.string;

string toSwapCase(string s) {
	if (s == s.toLower) {
		return s.toUpper;
	}
	if (s == s.toUpper) {
		return s.toLower;
	}
	return s;
}

void main() {
	auto str = readln;
	foreach (ch; str.split("")) {
		write(toSwapCase(ch));
	}
}

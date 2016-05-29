import std.algorithm;
import std.stdio;
import std.string;

void main() {
	int nItems;
	readf("%d\n", &nItems);

	auto items = readln.split;
	writeln(items.reverse.join(" "));
}

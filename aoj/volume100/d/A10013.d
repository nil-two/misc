import std.range;
import std.stdio;

void main() {
	for (;;) {
		int h, w;
		readf("%d %d\n", &h, &w);
		if (h == 0 && w == 0) {
			break;
		}

		auto sideLine   = "#".repeat(w).join ~ "\n";
		auto insideLine = "#" ~ ".".repeat(w-2).join ~ "#\n";
		auto block      = sideLine ~ insideLine.repeat(h-2).join ~ sideLine;
		writeln(block);
	}
}

import std.range;
import std.stdio;

void main() {
	for (;;) {
		int h, w;
		readf("%d %d\n", &h, &w);
		if (h == 0 && w == 0) {
			break;
		}

		auto line  = "#".repeat(w).join ~ "\n";
		auto block = line.repeat(h).join;
		writeln(block);
	}
}

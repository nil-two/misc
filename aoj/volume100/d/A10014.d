import std.algorithm;
import std.range;
import std.stdio;

void main() {
	for (;;) {
		int h, w;
		readf("%d %d\n", &h, &w);
		if (h == 0 && w == 0) {
			break;
		}

		auto block = iota(h)
			.map!(y => iota(w).map!(x => (x + y) % 2 == 0 ? "#" : "."))
			.map!(s => s.join ~ "\n")
			.join;
		writeln(block);
	}
}

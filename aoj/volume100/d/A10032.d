import std.algorithm;
import std.array;
import std.stdio;
import std.string;

void main() {
	string[] blocks;

loop:
	for (;;) {
		auto command = readln.strip.split;

		auto operation = command[0];
		final switch (operation) {
		case "push":
			auto block = command[1];
			blocks ~= block;
			break;
		case "pop":
			auto block = blocks[$-1];
			blocks = blocks[0 .. $-1];
			writeln(block);
			break;
		case "quit":
			break loop;
		}
	}
}

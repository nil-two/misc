import std.algorithm;
import std.conv;
import std.array;
import std.stdio;
import std.string;

void main() {
	string[][int] blocks;
	readln; // to skip n
loop:
	for (;;) {
		auto command = readln.strip.split;

		auto operation = command[0];
		final switch (operation) {
		case "push":
			auto dst   = command[1].to!int - 1;
			auto block = command[2];
			blocks[dst] ~= block;
			break;
		case "pop":
			auto src   = command[1].to!int - 1;
			auto block = blocks[src][$-1];
			blocks[src] = blocks[src][0 .. $-1];
			writeln(block);
			break;
		case "move":
			auto src   = command[1].to!int - 1;
			auto dst   = command[2].to!int - 1;
			auto block = blocks[src][$-1];
			blocks[src] = blocks[src][0 .. $-1];
			blocks[dst] ~= block;
			break;
		case "quit":
			break loop;
		}
	}
}

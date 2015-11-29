using System;
using System.Collections.Generic;

class AOJ
{
	static void Main()
	{
		var noStack = int.Parse(Console.ReadLine());

		Stack<string>[] stacks = new Stack<string>[noStack];
		for (var i = 0; i < noStack; i++)
			stacks[i] = new Stack<string>();

		while (true)
		{
			var instruction = Console.ReadLine().Split();
			var operation = instruction[0];
			if (operation == "quit")
				break;

			int src, dst;
			string block;
			switch (operation)
			{
				case "push":
					dst = int.Parse(instruction[1])-1;
					block = instruction[2];
					stacks[dst].Push(block);
					break;
				case "pop":
					src = int.Parse(instruction[1])-1;
					block = stacks[src].Pop();
					Console.WriteLine(block);
					break;
				case "move":
					src = int.Parse(instruction[1])-1;
					dst = int.Parse(instruction[2])-1;
					stacks[dst].Push(stacks[src].Pop());
					break;
			}
		}
	}
}

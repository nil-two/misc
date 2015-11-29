using System;
using System.Collections.Generic;

class AOJ
{
	static void Main()
	{
		var stack = new Stack<string>();
		while (true)
		{
			var instruction = Console.ReadLine().Split();
			var operation = instruction[0];
			if (operation == "quit")
				break;

			string block;
			switch (operation)
			{
				case "push":
					block = instruction[1];
					stack.Push(block);
					break;
				case "pop":
					block = stack.Pop();
					Console.WriteLine(block);
					break;
			}
		}
	}
}

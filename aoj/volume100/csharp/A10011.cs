using System;
using System.Linq;

class AOJ
{
	static void Main()
	{
		Console.ReadLine(); // Skip 'n'
		var a = Console.ReadLine()
			.Split()
			.Reverse()
			.ToArray();

		Console.WriteLine(string.Join(" ", a));
	}
}

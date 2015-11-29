using System;
using System.Linq;

class AOJ
{
	static void Main()
	{
		var line = Console.ReadLine();
		var nums = line
			.Split()
			.Select(s => int.Parse(s))
			.OrderBy(n => n)
			.Select(n => n.ToString())
			.ToArray();

		Console.WriteLine(string.Join(" ", nums));
	}
}

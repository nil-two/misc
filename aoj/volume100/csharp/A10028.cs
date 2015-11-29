using System;
using System.Linq;

class AOJ
{
	static void Main()
	{
		Console.ReadLine(); // Skip 'n'
		var nums = Console.ReadLine().Split()
			.Select(s => int.Parse(s))
			.OrderBy(n => n)
			.Select(n => n.ToString())
			.ToArray();

		Console.WriteLine(string.Join(" ", nums));
	}
}

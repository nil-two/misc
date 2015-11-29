using System;
using System.Linq;

class AOJ
{
	static void Main()
	{
		Console.ReadLine(); // Skip 'n'
		var s = Console.ReadLine().Split()
			.Select(w => int.Parse(w));

		Console.ReadLine(); // Skip 'q'
		var t = Console.ReadLine().Split()
			.Select(w => int.Parse(w));

		var c = s.Intersect(t).Count();
		Console.WriteLine(c);
	}
}

using System;
using System.Collections.Generic;
using System.Linq;

class AOJ
{
	static void Main()
	{
		var strings = new List<string>();
		var noString = int.Parse(Console.ReadLine());
		for (var i = 0; i < noString; i++)
			strings.Add(Console.ReadLine());

		var first = strings
			.OrderBy(s => s)
			.First();

		Console.WriteLine(first);
	}
}

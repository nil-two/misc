using System;
using System.Linq;

class AOJ
{
	static void Main()
	{
		var pattern = Console.ReadLine();
		var cnt = 0;
		while (true)
		{
			var line = Console.ReadLine();
			if (line == "END_OF_TEXT")
				break;

			cnt += line
				.Split()
				.Select(s => s.ToLower())
				.Where(s => s == pattern)
				.Count();
		}
		Console.WriteLine(cnt);
	}
}

using System;
using System.Linq; 

class AOJ
{
	static void Main()
	{
		while (true)
		{
			var line = Console.ReadLine();
			if (line == "0")
				break;

			var sum = line
				.ToCharArray()
				.Where(c => char.IsDigit(c))
				.Sum(c => c - '0');
			Console.WriteLine(sum);
		}
	}
}

using System;

class AOJ
{
	static void Main()
	{
		while (true)
		{
			var input = Console.ReadLine().Split();
			var a = int.Parse(input[0]);
			var b = int.Parse(input[1]);
			if (a == 0 && b == 0)
				break;

			if (a < b)
				Console.WriteLine("{0} {1}", a, b);
			else
				Console.WriteLine("{0} {1}", b, a);
		}
	}
}

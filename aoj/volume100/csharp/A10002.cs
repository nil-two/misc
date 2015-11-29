using System;

class AOJ
{
	static void Main()
	{
		var input = Console.ReadLine().Split();
		var a = int.Parse(input[0]);
		var b = int.Parse(input[1]);
		Console.WriteLine("{0} {1}",
				a * b,
				2*a + 2*b);
	}
}

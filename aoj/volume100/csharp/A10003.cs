using System;

class AOJ
{
	static void Main()
	{
		var input = Console.ReadLine().Split();
		var a = int.Parse(input[0]);
		var b = int.Parse(input[1]);
		Console.WriteLine(ToRelationship(a, b));
	}

	static string ToRelationship(int a, int b)
	{
		if (a == b) return "a == b";
		if (a > b) return "a > b";
		if (a < b) return "a < b";
		return "a ? b";
	}
}

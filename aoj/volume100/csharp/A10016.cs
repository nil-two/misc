using System;

class AOJ
{
	static void Main()
	{
		while (true)
		{
			var input = Console.ReadLine().Split();
			var m = int.Parse(input[0]);
			var f = int.Parse(input[1]);
			var r = int.Parse(input[2]);
			if (m == -1 && f == -1 && r == -1)
				break;

			Console.WriteLine(Grade(m, f, r));
		}
	}

	static string Grade(int m, int f, int r)
	{
		if (m == -1 || f == -1)        return "F";
		else if (m+f >= 80)            return "A";
		else if (m+f >= 65)            return "B";
		else if (m+f >= 50)            return "C";
		else if (m+f >= 30 && r >= 50) return "C";
		else if (m+f >= 30)            return "D";
		else                           return "F";
	}
}

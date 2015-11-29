using System;

class AOJ
{
	static void Main()
	{
		var input = Console.ReadLine().Split();
		var x1 = double.Parse(input[0]);
		var y1 = double.Parse(input[1]);
		var x2 = double.Parse(input[2]);
		var y2 = double.Parse(input[3]);

		Console.WriteLine(Distance(x1, y1, x2, y2).ToString("f6"));
	}

	static double Distance(double x1, double y1, double x2, double y2)
	{
		var h = Math.Abs(y2 - y1);
		var w = Math.Abs(x2 - x1);
		return Math.Sqrt(Math.Pow(h, 2) + Math.Pow(w, 2));
	}
}

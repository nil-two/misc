using System;

class AOJ
{
	static void Main()
	{
		var input = Console.ReadLine().Split();

		var a = double.Parse(input[0]);
		var b = double.Parse(input[1]);
		var deg = double.Parse(input[2]);
		var rad = deg * Math.PI / 180;
		var c = Math.Sqrt(Math.Pow(a, 2) + Math.Pow(b, 2) - 2*a*b*Math.Cos(rad));

		var area = a*b*Math.Sin(rad) / 2.0;
		var perimeter = a + b + c;
		var h = 2*area / a;
		Console.WriteLine(area.ToString("f6"));
		Console.WriteLine(perimeter.ToString("f6"));
		Console.WriteLine(h.ToString("f6"));
	}
}

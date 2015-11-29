using System;

class AOJ
{
	static void Main()
	{
		var r = double.Parse(Console.ReadLine());

		Console.WriteLine("{0} {1}",
				(r*r*Math.PI).ToString("f6"),
				(2*r*Math.PI).ToString("f6"));
	}
}

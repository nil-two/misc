using System;

class AOJ
{
	static void Main()
	{
		while (true)
		{
			var input = Console.ReadLine().Split();
			var a = int.Parse(input[0]);
			var b = int.Parse(input[2]);
			var op = input[1];
			if (op == "?")
				break;

			Console.WriteLine(Calc(op, a, b));
		}
	}

	static int Calc(string op, int a, int b)
	{
		switch (op) {
		case "+": return a + b;
		case "-": return a - b;
		case "*": return a * b;
		case "/": return a / b;
		}
		return 0;
	}
}

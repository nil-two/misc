using System;

class AOJ
{
	static void Main()
	{
		var scoreA = 0;
		var scoreB = 0;
		var noGame = int.Parse(Console.ReadLine());
		for (var i = 0; i < noGame; i++)
		{
			var input = Console.ReadLine().Split();
			var a = input[0];
			var b = input[1];

			switch (a.CompareTo(b))
			{
				case 0:
					scoreA += 1;
					scoreB += 1;
					break;
				case 1:
					scoreA += 3;
					break;
				case -1:
					scoreB += 3;
					break;
			}
		}

		Console.WriteLine("{0} {1}", scoreA, scoreB);
	}
}

using System;

class AOJ
{
	static void Main()
	{
		while (true)
		{
			var input = Console.ReadLine().Split();
			var h = int.Parse(input[0]);
			var w = int.Parse(input[1]);
			if (h == 0 && w == 0)
				break;

			for (int hi = 0; hi < h; hi++)
			{
				for (int wi = 0; wi < w; wi++)
				{
					Console.Write("#");
				}
				Console.WriteLine();
			}
			Console.WriteLine();
		}
	}
}

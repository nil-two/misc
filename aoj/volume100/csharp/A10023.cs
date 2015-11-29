using System;

class AOJ
{
	static void Main()
	{
		while (true)
		{
			var cards = Console.ReadLine();
			if (cards == "-")
				break;

			var noShuffle = int.Parse(Console.ReadLine());
			for (var ci = 0; ci < noShuffle; ci++)
			{
				var height = int.Parse(Console.ReadLine());
				cards = Shuffle(cards, height);
			}

			Console.WriteLine(cards);
		}
	}

	static string Shuffle(string s, int height)
	{
		return s.Substring(height, s.Length - height)
			+ s.Substring(0, height);
	}
}

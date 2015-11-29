using System;
using System.Collections.Generic;
using System.Linq;

class AOJ
{
	static void Main()
	{
		var kinds    = "SHCD".ToCharArray();
		var indexes  = Enumerable.Range(1, 13);

		var cards = new HashSet<string>();
		foreach (var kind in kinds)
			foreach (var index in indexes)
				cards.Add(ToCards(kind, index));

		var noCards = int.Parse(Console.ReadLine());
		for (var ci = 0; ci < noCards; ci++)
		{
			var card = Console.ReadLine();
			cards.Remove(card);
		}

		foreach (var kind in kinds)
			foreach (var index in indexes)
				if (cards.Contains(ToCards(kind, index)))
					Console.WriteLine(ToCards(kind, index));
	}

	static string ToCards(char kind, int index)
	{
		return kind + " " + index;
	}
}

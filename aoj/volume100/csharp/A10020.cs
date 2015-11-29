using System;
using System.Collections.Generic;

class AOJ
{
	static void Main()
	{
		var cnt = new Dictionary<char, int>();
		for (var ch = 'a'; ch <= 'z'; ch++)
			cnt.Add(ch, 0);

		while (true)
		{
			var line = Console.ReadLine();
			if (line == null)
				break;

			foreach (char rawch in line)
			{
				var ch = char.ToLower(rawch);
				if (cnt.ContainsKey(ch))
					cnt[ch]++;
			}
		}

		for (var ch = 'a'; ch <= 'z'; ch++)
			Console.WriteLine("{0} : {1}", ch, cnt[ch]);
	}
}

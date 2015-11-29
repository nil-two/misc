using System;

class AOJ
{
	static void Main()
	{
		for (var i = 1;; i++)
		{
			var s = Console.ReadLine();
			if (s == "0")
				break;

			Console.WriteLine("Case {0}: {1}", i, s);
		}
	}
}

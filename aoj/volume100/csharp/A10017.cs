using System;

class AOJ
{
	static void Main()
	{
		while (true)
		{
			var input = Console.ReadLine().Split();
			var n = int.Parse(input[0]);
			var x = int.Parse(input[1]);
			if (n == 0 && x == 0)
				break;

			var cnt = 0;
			for (var i1 = 1;    i1 <= n; i1++)
			for (var i2 = i1+1; i2 <= n; i2++)
			for (var i3 = i2+1; i3 <= n; i3++)
				if (i1 + i2 + i3 == x)
					cnt++;
			Console.WriteLine(cnt);
		}
	}
}

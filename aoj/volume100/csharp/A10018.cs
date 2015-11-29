using System;
using System.Linq; 

class AOJ
{
	static void Main()
	{
		var chars = Console.ReadLine().ToCharArray();
		var toggledChars = chars
			.Select(c => ToToggle(c))
			.ToArray();

		Console.WriteLine(new string(toggledChars));
	}

	static char ToToggle(char ch)
	{
		if (char.IsLower(ch)) return char.ToUpper(ch);
		if (char.IsUpper(ch)) return char.ToLower(ch);
		return ch;
	}
}

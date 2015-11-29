using System;
using System.Collections.Generic;
using System.Linq;

class AOJ
{
	static void Main()
	{
		while (true)
		{
			var noItem = int.Parse(Console.ReadLine());
			if (noItem == 0)
				break;

			var nums = Console.ReadLine()
				.Split()
				.Select(s => double.Parse(s))
				.ToList();

			Console.WriteLine(StandardDeviation(nums).ToString("f6"));
		}
	}

	static double StandardDeviation(List<double> nums)
	{
		return Math.Sqrt(Variance(nums));
	}

	static double Variance(List<double> nums)
	{
		var avg = Avarage(nums);
		var vsum = 0.0;
		foreach (var n in nums)
			vsum += Math.Pow(n-avg, 2);
		return vsum / nums.Count;
	}

	static double Avarage(List<double> nums)
	{
		var sum = 0.0;
		foreach (var n in nums)
			sum += n;
		return sum / nums.Count;
	}
}

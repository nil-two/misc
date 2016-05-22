using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;

public class CatN
{
	static string commandName = "catn";
	static string usage = "Usage: catn N [FILE]...";

	static string ReadAllContents(string path) {
		using (StreamReader sr = new StreamReader(path)) {
			return sr.ReadToEnd();
		}
	}

	static void PrintUsage() {
		Console.Error.WriteLine(usage);
	}

	static void Warn(Exception e) {
		Console.Error.WriteLine("{0}: {1}", commandName, e.Message);
	}

	public static int Main(string[] args) {
		if (args.Length < 1 || args[0] == "--help") {
			PrintUsage();
			return 2;
		}

		int n = 0;
		try {
			n = Int32.Parse(args[0]);
		} catch (Exception e) {
			Warn(e);
			return 2;
		}

		string src = null;
		try {
			if (args.Length < 2) {
				src = Console.In.ReadToEnd();
			} else {
				src = args.Skip(1)
					.Select(path => ReadAllContents(path))
					.Aggregate((a, b) => a + b);
			}
		} catch (Exception e) {
			Warn(e);
			return 2;
		}

		if (n < 0) {
			for (;;) {
				Console.Write(src);
			}
		} else {
			for (int i = 0; i < n; ++i) {
				Console.Write(src);
			}
		}
		return 0;
	}
}

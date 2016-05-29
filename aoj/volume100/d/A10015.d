import std.algorithm;
import std.conv;
import std.range;
import std.stdio;
import std.string;
 
string toCard(string kind, string index) {
    return kind ~ " " ~ index;
}
 
void main() {
    string[] kinds   = ["S", "H", "C", "D"];
    string[] indexes = iota(1, 14).map!(to!string).array;
 
    bool[string] cards;
    foreach (kind; kinds) {
        foreach (index; indexes) {
            string card = toCard(kind, index);
            cards[card] = false;
        }
    }
 
    int nCards;
    readf("%d\n", &nCards);
 
    for (int i = 0; i < nCards; i++) {
        string card = readln.strip;
        cards[card] = true;
    }
 
    foreach (kind; kinds) {
        foreach (index; indexes) {
            string card = toCard(kind, index);
            if (!cards[card]) {
                writeln(card);
            }
        }
    }
}
Compile Error Logs:

Status
Judge: 4/4 	D 	CPU: 00.00 sec 	Memory: 2484 KB 	Length: 705 B 	2016-05-28 21:48 	2016-05-28 21:48
Results for testcases
Case # 	Verdict 	CPU Time 	Memory 	In 	Out 	Case Name
Case #1: 	: Accepted 	00.00 sec 	2460 KB 			
Case #2: 	: Accepted 	00.00 sec 	2484 KB 			
Case #3: 	: Accepted 	00.00 sec 	2452 KB 			
Case #4: 	: Accepted 	00.00 sec 	2368 KB 			
< prev | 	1 	/ 	4 	| next > 	  		 : Accepted        00.00 sec        2460 KB
 
Judge Input #1 ( in1.txt | 16 B) 		Judge Output #1 ( out1.txt | 16 B)

In preparation.

		

In preparation.

Comments
 
 Under Construction.
 
Categories
 
Add Category: 	
	
	* Note for the classification 	
 
Free Tags
 
Add Tag: 		
	Please add a tag related to 'algorithm'.
 

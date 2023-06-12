using Godot;

using System;
using System.Collections.Generic;
//using System.Linq;

public partial class permutation : Node
{
	
	//public Node2D node; 
	public List <string> tab = new List<string>(); 
	public List <string> tabWords = new List<string>(); 
	
	
	 
	public override void _Ready()
	{
		//node = (Node2D)GetNode("Wordlist");
	//	node = GetNode<Node2D>("WordList") as Node2D;


    }
	    
	
		 
 
	
	public void make_all_permutation(string word,string letters)
	{

		 

		tab.Add(word);
		foreach( char c in letters)
		{
			string letters_new = letters.Clone().ToString();
			letters_new = letters_new.Replace(c.ToString(), string.Empty) ;
			 make_all_permutation(word + c,letters_new );

				 /*
					func make_all_permutation(word :String,letters):
						give_word_to_table(word)
						#print("y")
							for character in letters:
								var letters_new = letters.duplicate()
								letters_new.erase(character)
								make_all_permutation(word + character,letters_new)
				*/
		}

	}
	public string [] give_me_table_of_words()
	{
		string [] tab_tymczasowa  = tab.ToArray();
		 
		return tab_tymczasowa;

	}

	public void search_in_all_words_matched_permutation(string [] allWords)
	{ // porownaj kombinacje / permutacje ze slowami  i stworz liste tabWords
	
	   
	   foreach(string element in allWords)
	   {
		 if(tab.Contains(element))
		 {
			tabWords.Add(element);
		 }
	   }
	   	
	 	
	
	// 	bool repeat = false;
	// 	int i = 1;
	//    //posortuj
	// 	while(i<tabWords.Count)
	// 	{
			
	// 		if(tabWords[i-1].Length > tabWords[i].Length)
	// 		{
    //           var str1 = tabWords[i-1];
	// 		  var str2 = tabWords[i];
	// 		  tabWords[i-1] = str2;
	// 		  tabWords[i] =  str1;
	// 		  repeat = true;
	// 		}
	// 		i++;
		
	// 		if(i >= tabWords.Count)
	// 		{
	// 			if(repeat) 	i=1; 
	// 			repeat = false;
	// 		}
			 
	// 	}
		// int compareStrings( string a, string b ) => a.Length.CompareTo( b.Length );
		// Comparison<string> compareMethod = compareStrings;
		// tabWords.Sort( compareMethod );
		tabWords.Sort((x, y) => x.Length.CompareTo(y.Length));
		//   tabWords.Sort((x, y) => x.Length.CompareTo(y.Length));	  //Compare {return -1 x<y }  {return 0 x==y} {return +1 y>x}
		
		/*
		for element in all_combinations:
			var number = WordList.allWords.find(element)
			if(number >= 0 ):
				all_finded_words.append(element)

		*/
	}
	public string [] give_me_table_of_checked_words()
	{
		string [] tab_tymczasowa  = tabWords.ToArray();
		 
		return tab_tymczasowa;

	}









}



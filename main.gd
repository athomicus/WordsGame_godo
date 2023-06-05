extends Node2D
var all_combinations = [] # tablica kombinacji wylosowanego wyrazu
var all_finded_words = []
var which_word = 0
func _ready():
	which_word = randomWords()
	$RandomWordLabel.text = WordList.longWords[which_word]
	var word = WordList.longWords[which_word] # lista słow z pliku jest w global
	print(word)
	make_all_permutation("",strToArray(word))
	print("permutacje DONE!")
	#for i in range(100):
	#	print(":", all_combinations[i])
	
#musimy sprawdzic rozbita liste slow ktore mozemy utworzyc 
	#var ab = WordList.longword.find("AKA")
	#print("FIND:",ab)
	
	# find zwraca nr elementu tablicy jak nie znajdzie to -1
	for element in all_combinations:
		var number = WordList.allWords.find(element)
		if(number >= 0 ):
			all_finded_words.append(element)
			
	
	
	var all_finded_words_copy = all_finded_words.duplicate()
	print(all_finded_words_copy)
	var j = 1
	for element in all_finded_words:
		if(all_finded_words.find(element,j) >=0):
			all_finded_words_copy.erase(all_finded_words[j])
		j+= 1
	print(all_finded_words_copy)
#all_combinations[3]s

 

func make_all_permutation(word :String,letters):
	give_word_to_table(word)
		#print("y")
	for character in letters:
		var letters_new = letters.duplicate()
		letters_new.erase(character)
		make_all_permutation(word + character,letters_new)
	
func if_created_word_exist_in_dictionary(word):
	return WordList.longWords.find(word) >= 0
	
		
func give_word_to_table(generated_word):
	#if !if_created_word_exist_in_dictionary(generated_word):
	#	return
	all_combinations.append(generated_word)
	
	
	
	
func strToArray(string):
	var array = []
	for c in string:
		array.append(c)
	return array
	
		
		
		

#func backtrack(nums: Array, current: Array, result: Array):
#	if nums.size() == 0:
#		result.append(current)
#	else:
#		for i in range(nums.size()):
#			var new_nums = nums.duplicate()
#			var num = new_nums.remove_value(i)
#			var new_current = current.duplicate()
#			new_current.append(num)
#			backtrack(new_nums, new_current, result)

	#print(combinations)
	
	#    new_nums.remove(i) <=> replace(new_nums.substr(i, 1),"")
	#var a = "freoobar"
	#var b = a.substr(1,3)
	#print(b)
 


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func randomWords():
	randomize()
	which_word = randi()%(WordList.lenght_of_longWords)   # od 0  do lenght_of_longWords
	return which_word


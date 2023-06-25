extends Node2D
#var all_combinations = [] # tablica kombinacji wylosowanego wyrazu
var all_finded_words = [] 
var which_word = 0
var lit_scene_container = []
signal updateUI(all_words)

 

func _ready():
	which_word = randomWords()
	$RandomWordLabel.text = WordList.longWords[which_word]
	var word = WordList.longWords[which_word] # lista słow z pliku jest w global
	print(word)
	
	$permutation.make_all_permutation("",word)
	$permutation.search_in_all_words_matched_permutation(WordList.allWords)
	all_finded_words = $permutation.give_me_table_of_checked_words()
	print(all_finded_words)
	print("permutacje DONE!")
	emit_signal("updateUI",all_finded_words)
	
	$LineEdit.call_deferred("grab_focus") # grab focus to  a node
	
	#print( get_node(cs[1]) )

		
		#for child in a:
		#	get_node(child).Label.visible = true
		#var 
	#print(cs)
	#for el in cs:
	
		
	# rysuj liter bloczki
	#for element in all_finded_words:
	#var tab = []
	
	
	
	var literka_scn  = load("res://litera.tscn")
 
	#for i in range(all_finded_words.size()):
	#	var tym:String = all_finded_words[i]
	#	for j in range(tym.length()):
	#		var instance = literka_scn.instantiate()
	#		add_child(instance)
	#		instance.position = Vector2(32*j,(35*i))
	#		instance.get_node("Letter").text = str(tym[j])
	#var xpos = 0
	#var ypos = 0
	#var repeat_counter = 0
	#for element in all_finded_words:
	#	for character in element:
	#		var instance = literka_scn.instantiate()
	#		add_child(instance)
	#		instance.position = Vector2(32*xpos,(35*ypos))
	#		instance.get_node("Letter").text = character
	#		xpos += 1
	#	repeat_counter += 1
	#	if repeat_counter >= 4:
	#		ypos += 1
	#		xpos = 0	
	#		repeat_counter = 0
	#	else:
	#		xpos +=2
#	#	lit_scene_container.append(instance)
			
			
			
			
			
			
		
	#var Lnode =  get_node("Litery")
	#var scene  = load("res://litera.tscn")
	
	#var instance = scene.instantiate()
	#Lnode.add_child(instance)
	#label1.position = Vector2(10,10)
 
	
			
		
		
	
	#var all_finded_words_copy = all_finded_words.duplicate()
	#var j = 1
	#for element in all_finded_words:
	#	if(all_finded_words.find(element,j) >=0):
	#		all_finded_words_copy.erase(all_finded_words[j])
	#	j+= 1
	
	
 

 

#func make_all_permutation(word :String,letters):
#	give_word_to_table(word)
#		#print("y")
#	for character in letters:
#		var letters_new = letters.duplicate()
#		letters_new.erase(character)
#		make_all_permutation(word + character,letters_new)
#	
func if_created_word_exist_in_dictionary(word):
	return WordList.longWords.find(word) >= 0
	
		
#func give_word_to_table(generated_word):
#	#if !if_created_word_exist_in_dictionary(generated_word):
#	#	return
#	all_combinations.append(generated_word)
	
	
	
	
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

	
func randomWords():
	randomize()
	which_word = randi()%(WordList.lenght_of_longWords)   # od 0  do lenght_of_longWords
	return which_word

func get_all_permutation_list_word():
	return all_finded_words

extends Node2D
var combinations = []
var which_word = 0
func _ready():
	which_word = randomWords()
	$RandomWordLabel.text = WordList.longWords[which_word]
	var word = WordList.longWords[which_word]
	
	f("",strToArray(word))
	#generate_char_combinations("abcd")
	
	#f("",['a','b','c'])
 
	var nums = [1, 2, 3]
	var permutations = permute(nums)
	print(permutations)
	
func permute(nums: Array) -> Array:
	var result = []

#	backtrack(nums, [], result)
	return result
	
func f(word,letters):
	print(word)
	for character in letters:
		var letters_new = letters.duplicate()
		letters_new.erase(character)
		f(word + character,letters_new)
		
	
	
	
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

	
	
func generate_char_combinations(word):
	recursive_method("",word)
	return combinations

func recursive_method(current,remaining):
	if remaining.length() == 0:
		combinations.append(current)

	for i in range(remaining.length()):
		var new_current = current + remaining[i]
		var new_remaining = remaining.replace(remaining.substr(i, 1),"")
		recursive_method(new_current, new_remaining)
	
	
 

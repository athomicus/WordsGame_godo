extends Control 
var path_name_of_instances = []
var path
var w2  = load("res://word2Letters.tscn")
var w3  = load("res://word3Letters.tscn")
var w4  = load("res://word4Letters.tscn")
var w5  = load("res://word5Letters.tscn")
var w6  = load("res://word6Letters.tscn")
var childrenArray   # tablica obiektow slow




func _on_main_update_ui(all_words):
	var word_group = 2
	var which_word =1
	
	var word = all_words[0]
	var node_name
	var make_default_wch_count = false
	
	#get_node("ShowWords/Words_2_Group/word1/Letter1/Label").text = word[0]
	#get_node(node_name).text = word[1]
	
	#var w3  = load("res://word3Letters.tscn")
	for element in all_words:
		
		match(element.length()):
			2:
				var instance = w2.instantiate()
				instantiate_letter("ShowWords/Words_2_Group",element,instance,12)
			3:
				var instance = w3.instantiate()
				instantiate_letter("ShowWords/Words_3_Group",element,instance,9)
#		
			4:
				var instance = w4.instantiate()
				instantiate_letter("ShowWords/Words_4_Group",element,instance,7)
			5:
				var instance = w5.instantiate()
				instantiate_letter("ShowWords/Words_5_Group",element,instance,5)
			6:
				var instance = w6.instantiate()
				instantiate_letter("ShowWords/Words_6_Group",element,instance,3)
	
	#turn off all letters
	turn_off_all_letter()
	#a[1].visible = false
	
	
func instantiate_letter(path,element,instance,wrap_words_count):
	#path norm  # path1 a#path2-b# #path3-c# path4-d# 
	
	var path1 = path.insert(17,"a")
		
	#print(path1)
	#path1[17] = "a"
	var path2 = path1
	path2[17] = "b"
	var path3 = path2
	path3[17] = "c"
	var path4 = path3
	path4[17] = "d"
	var path5 = path4
	path4[17] = "e"
	
	var count_normal = get_node(path).get_children().size()
	#print("--------------")
	#print(path)
	#print(path1)
	#print(path2)
	#print(path3)
	#print(path4)
	#print("--------------")
	var count_a = get_node(path1).get_children().size()
	var count_b = get_node(path2).get_children().size()
	var count_c = get_node(path3).get_children().size()
	var count_d = get_node(path4).get_children().size()
 
	if(count_normal > wrap_words_count):
		path = path1 # a path
		get_node(path1).visible = true 
	
	if(count_a > wrap_words_count ):
		path = path2 # b path
		get_node(path2).visible = true  		
	
	if(count_b >= wrap_words_count):
		path = path3 # c path
		get_node(path3).visible = true
	
	if(count_c >= wrap_words_count):
		path = path4 # d path
		get_node(path4).visible = true 
	
	if(count_d >= wrap_words_count):
		path = path5 # d path
		get_node(path5).visible = true 
		
# instancjuj z path
	get_node(path).add_child(instance)
	instance.name = str(element)  
	path_name_of_instances.append(path + "/"+ str(element))
	
	for i in range(element.length()):
		get_node(path+"/"+ str(element) + "/Letter" + str(i+1) + "/Label").text = element[i]

func get_path_array():
	return path_name_of_instances


func turn_off_all_letter():
	for path in path_name_of_instances:	
		childrenArray = get_node(path).get_children()
		for letter in childrenArray:
			letter.get_node("Label").visible = false
	
	
	#for path in path_name_of_instances:
		
	#var cs = $"../Control".get_path_array() 
	
	
	#get_node( ("../Control/"  +cs[1] + "/Letter1/Label")).visivle = false

#		var s = 0
#		while(s != element.length()):
#			match(element.length()):
#				#2: which_word=1
#				3: which_word=1
#				4: which_word=1
#				5: which_word=1
#				6: which_word=1
#				7: which_word=1
#			node_name = "ShowWords/Words_"+str(element.length())+"_Group/word"+str(which_word)+"/Letter"+str(s+1)+"/Label"
#			get_node_or_null(node_name).text = element[s]
#			
#			node_name = "ShowWords/Words_"+str(element.length())+"_Group/word"+str(which_word)
#3			get_node(node_name).visible= true;
#			#$ShowWords/Words_2_Group/word1.visible = true
#			s+=1
#		which_word+=1
		
		
#			2:
#				node_name = "ShowWords/Words_2_Group/word"+str(which_word)+"/Letter1/Label"
#				get_node(node_name).text = element[0]
#				node_name = "ShowWords/Words_2_Group/word"+str(which_word)+"/Letter2/Label"
#				get_node(node_name).text = element[1]
#				which_word+=1
#			
#			3:
#				
#				node_name = "ShowWords/Words_3_Group/word"+str(which_word)+"/Letter1/Label"
#				get_node(node_name).text = element[0]
#				node_name = "ShowWords/Words_3_Group/word"+str(which_word)+"/Letter2/Label"
#				get_node(node_name).text = element[1]
#				node_name = "ShowWords/Words_3_Group/word"+str(which_word)+"/Letter3/Label"
#				get_node(node_name).text = element[2]
#				which_word+=1
#				if which_word >= 3:
#					which_word = 1
#			4:
#				node_name = "ShowWords/Words_4_Group/word"+str(which_word)+"/Letter1/Label"
#				get_node(node_name).text = element[0]
#				node_name = "ShowWords/Words_4_Group/word"+str(which_word)+"/Letter2/Label"
#				get_node(node_name).text = element[1]
#				node_name = "ShowWords/Words_4_Group/word"+str(which_word)+"/Letter3/Label"
#				get_node(node_name).text = element[2]
#				node_name = "ShowWords/Words_4_Group/word"+str(which_word)+"/Letter4/Label"
#				get_node(node_name).text = element[3]
#				which_word+=1
#				if which_word >= 4:
#					which_word = 1

		
	#name = "ShowWords/Words_2_Group/word" + str(word_licznik) + "Letter2"
	#get_node(name).text = all_words[1]
	
	#$name.Letter2 = all_words[1]

#$ShowWords/Words_2_Group/word2/Letter1/Label






func _on_button_send_answer(answer):
	var allWord = $"..".get_all_permutation_list_word() #z maina allWord
	answer = answer.to_upper()
	var whichOne = allWord.find(answer)
	if(whichOne>=0):
		var path = path_name_of_instances[whichOne] #zwroc sciezke node ktory zgadles
		var arr = get_node(path).get_children() # znajdz jego dzieci
		for element in arr:
			element.get_node("AnimationPlayer").play("showletter")
			$"../LineEdit".text = ""
			#element.get_node("Label").visible = true # zapal literki
		#for letter in childrenArray[whichOne]:
		#	letter.get_node("Label").visible = false
	else:
		#wrong answer
		$"../RedBad/AnimationWrong".play("wrong")
		$"../LineEdit".text = ""
	print(whichOne)


func _on_line_edit_text_submitted(new_text):
	_on_button_send_answer(new_text)

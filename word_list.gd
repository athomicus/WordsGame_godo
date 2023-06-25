extends Node2D
var allWords = [] #wszystki slowa zaczytane z pliku
var longWords = [] # dluzsze slowa z ktorych robimy levele
var file_path_pl="res://slowa.txt"
var file_path="res://2of12inf.txt"
var which_word
var lenght_of_longWords

 
# Called when the node enters the scene tree for the first time.
func _ready():
	load_file_prepare_data(file_path) 
	
	lenght_of_longWords = longWords.size() - 1
	print("Plik wczytany")
	
	#randi()%10+1 # 1-10
	#$RandomWordLabel.text = "abc"
	#longWords[which_word]


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func get_all_words():
	return allWords

func load_file_prepare_data(path):
	var line 
	var file = FileAccess.open(path,FileAccess.READ)
	while !file.eof_reached():
		line = file.get_line()
		
		if line.length() > 5 && line.length() <=7:
			longWords.append(line) #z dlugich slow zrobimy levele	
	
		allWords.append(line) 
			
	file = null # File is closed.
	
		
	print("longWords:",longWords.size())
	print("allWords:",allWords.size())
	#print(allWords[0].length())
	return
	
	
	#print( allWords[allWords.size()-2] )
	#var ostatniwyraz =  allWords[allWords.size()-1]
	#print(ostatniwyraz, " ma znakow:" , ostatniwyraz.length()) 
	#var a = allWords.find("bibulka") # -1 
	#print(a)
	
	#a = allWords.find("SEx".to_upper())  
	#print(a)
	
	

	
	#file.store_var(content)
	#var content = file.get_var()

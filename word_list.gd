extends Node2D
var longWords = []
var path="res://2of12inf.txt"


 
# Called when the node enters the scene tree for the first time.
func _ready():
	load_file(path) 


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func load_file(path):
	var line 
	var file = FileAccess.open(path,FileAccess.READ)
	while !file.eof_reached():
		line = file.get_line()
		longWords.append(line)
		
		
	
	print( longWords[longWords.size()-2] )
	var ostatniwyraz =  longWords[longWords.size()-1]
	print(ostatniwyraz, " ma znakow:" , ostatniwyraz.length()) 
	var a = longWords.find("bibulka") # -1 
	print(a)
	
	a = longWords.find("SEx".to_upper())  
	print(a)
	
	file = null # File is closed.
	return
	
	#file.store_var(content)
	#var content = file.get_var()

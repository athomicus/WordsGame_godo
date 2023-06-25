extends Button
signal send_answer(answer)


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

#!PROCESS
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_pressed():
	emit_signal("send_answer",$"../LineEdit".text)
	
	#var cs = $"../Control".get_path_array() 
	#print(cs)
	#var w = cs[1] +"/Letter1/Label"
	#print(cs[1])
	#get_node( ("../Control/"  +cs[1] + "/Letter1/Label")).text ="6"
	#get_node("Control/"  +cs[0] + "/Letter1/Label").text = "7"
	#print( ("../Control/" +cs[1] + "/Letter1/Label"))
	

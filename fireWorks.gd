extends Node2D
@export var fireWork : PackedScene
#var rng
#var sSize
var window_width
var window_height
func _ready():
	seed( 4206 );;;;;;;
	#rng = RandomNumberGenerator.new()
#	sSize = DisplayServer.screen_get_size() #OS.get_screen_size() 
	#print("!!!",sSize)
	#vp =get_viewport().get_region().size
	#print("!!!",vp)
	window_width = ProjectSettings.get("display/window/size/viewport_width")
	window_height = ProjectSettings.get("display/window/size/viewport_height")
# Called when the node enters the scene tree for the first time.

func play_sound():
	while(true):
		$"../explosion".play()
		await get_tree().create_timer(0.5).timeout
	
	
func run_fireworks():
	play_sound()
	for i in range(28):

		var _particle = fireWork.instantiate()
	#_particle.position = global_position
	#_particle.rotation = global_rotation
	
		_particle.position.x = window_width /2 +randi_range(-400,400)
		_particle.position.y = window_height /2 + randi_range(-400,400)
		_particle.change_color(Color(randf_range(1.0,1.2),randf_range(0.4,1.4),randf_range(0.5,1.2),randf_range(0.9,1)))
		
		get_tree().current_scene.add_child(_particle)
		
		await get_tree().create_timer(0.1).timeout

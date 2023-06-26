extends Node2D

@onready var timeCreated = Time.get_ticks_msec()

func _ready():
	$CPUParticles2D.emitting = true
func change_color(kolor):
	$CPUParticles2D.self_modulate = kolor

func _process(delta):
	if Time.get_ticks_msec() - timeCreated > 2000: #2s
		queue_free()



	

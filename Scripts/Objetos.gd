extends Node2D
'''
riqui, ya hice que lo moviera, riqui mirate un video sobre SEÑALES EN GODOT,
por favor
'''
var press: bool = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if press:
		position = lerp(position, get_global_mouse_position(), 25 * delta)
		z_index = 10
	else:
		z_index = 1

func _on_node_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			press = true
		else:
			press = false 

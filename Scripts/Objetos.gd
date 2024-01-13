extends Node2D
'''
Lopez no puedo hacer que este script funcione deberia hacer
que la flor se mueva peor no se mueve ni por puta
'''
var press: bool = false
var move: bool = false
var moviendo: bool = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	print(press)
	if press and not move:
		moviendo = true
		position = lerp(position, get_global_mouse_position(), 25 * delta)
		z_index = 10
	else:
		moviendo = false
		z_index = 1

func _on_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT:
			press = event.pressed
			if press:
				move = true

func _on_area_2d_body_entered(body):
	if not moviendo:
		move = true

func _on_area_2d_body_exited(body):
	if not moviendo:
		move = false

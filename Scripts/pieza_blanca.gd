extends Pieza


var press:bool
var move:bool = false
var moviendo:bool= false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	print(press)
	if press and not move:
		moviendo = true
		position = lerp(position,get_global_mouse_position(),25*delta)
		z_index = 10
	else:
		moviendo = false
		z_index= -10

func _on_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if !Input.is_action_just_pressed("Click"):
			press = false
		else:
			press = true


func _on_area_2d_body_entered(body):
	if not moviendo:
		move = true

func _on_area_2d_body_exited(body):
	if not moviendo:
		move = false

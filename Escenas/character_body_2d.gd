extends CharacterBody2D

var velocidad = 250

func _process(delta):
	var movimiento = Vector2()
	
	if Input.is_action_pressed("ui_right"):
		movimiento.x += 1
	if Input.is_action_pressed("ui_left"):
		movimiento.x -= 1
	if Input.is_action_pressed("ui_down"):
		movimiento.y += 1
	if Input.is_action_pressed("ui_up"):
		movimiento.y -= 1

	if movimiento.length() > 0:
		movimiento = movimiento.normalized()

	move_and_slide()

extends CharacterBody2D

var speed = 200
var EnPlataforma : bool

func get_input():
	var input_direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = input_direction * speed

func _physics_process(delta):
	if EnPlataforma == true:
		get_input()
		move_and_slide()

func _on_BodyEntered(body):
	if body.is_in_group("Plataforma"):
		EnPlataforma = true

func _on_BodyExited(body):
	if body.is_in_group("Plataforma"):
		EnPlataforma = false

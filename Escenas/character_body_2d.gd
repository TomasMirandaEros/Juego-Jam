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


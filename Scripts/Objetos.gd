extends Node2D
'''
riqui, ya hice que lo moviera, riqui mirate un video sobre SEÑALES EN GODOT,
por favor
'''
var press: bool = false
func _process(delta):
	if press:
		if Input.is_action_just_pressed("Agarrar"):
			get_parent().remove_child(self)
			

func _on_node_2d_body_entered(body):
	$E.visible = true
	press = true


func _on_node_2d_body_exited(body):
	$E.visible = false
	press = false

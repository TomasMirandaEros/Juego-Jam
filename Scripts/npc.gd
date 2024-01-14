extends CharacterBody2D

var Condicion: bool

func _ready():
	Condicion = false

func _process(delta):
	if Condicion:
		# Desactivar un Control y Activar otro (ajusta los nombres según tu escena)
		var nueva_instancia = preload("res://Escenas/Piezas/Blancas/pieza_blanca.tscn").instantiate()
		add_child(nueva_instancia)
		$Control1.visible = false
	else:
		# Activar un Control y Desactivar otro
		$Control1.visible = true

func _on_Area2D_body_entered(body):
	if body.is_in_group("hacha"):
		Condicion = true

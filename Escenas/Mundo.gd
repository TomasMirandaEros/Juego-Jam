extends Node3D

var EscPieza1 = preload("res://Escenas/Pieza 1.tscn")
var EscPieza4 = preload("res://Escenas/Pieza 4.tscn")
var EscPieza5 = preload("res://Escenas/Pieza 5.tscn")
var EscPieza6 = preload("res://Escenas/Pieza 6.tscn")
var EscPieza7 = preload("res://Escenas/Pieza 7.tscn")
var EscPieza8 = preload("res://Escenas/Pieza 8.tscn")
var EscPieza9 = preload("res://Escenas/Pieza 9.tscn")
var EscPlayer = preload("res://Escenas/character_body_3d.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	var nuevaInstancia1 = EscPieza1.instantiate()
	nuevaInstancia1.position = Vector3(0, 0, 0)
	add_child(nuevaInstancia1)

	var nuevaInstancia4 = EscPieza4.instantiate()
	nuevaInstancia4.position = Vector3(4, 0, -2)
	add_child(nuevaInstancia4)

	var nuevaInstancia5 = EscPieza5.instantiate()
	nuevaInstancia5.position = Vector3(-4, 0, 0)
	add_child(nuevaInstancia5)

	var nuevaInstancia6 = EscPieza6.instantiate()
	nuevaInstancia6.position = Vector3(0, 0, 4)
	add_child(nuevaInstancia6)

	var nuevaInstancia7_1 = EscPieza7.instantiate()
	nuevaInstancia7_1.position = Vector3(-6, 0, 4)
	add_child(nuevaInstancia7_1)

	var nuevaInstancia7_2 = EscPieza7.instantiate()
	nuevaInstancia7_2.position = Vector3(4, 0, 4)
	nuevaInstancia7_2.rotation_degrees = Vector3(0, 180, 0)  # Rotada 180 grados en el eje Y
	add_child(nuevaInstancia7_2)

	var nuevaInstancia8 = EscPieza8.instantiate()
	nuevaInstancia8.position = Vector3(4, 0, -6)
	add_child(nuevaInstancia8)

	var nuevaInstancia9_1 = EscPieza9.instantiate()
	nuevaInstancia9_1.position = Vector3(-2, 0, -6)
	add_child(nuevaInstancia9_1)

	var nuevaInstancia9_2 = EscPieza9.instantiate()
	nuevaInstancia9_2.position = Vector3(-4, 0, -4)
	add_child(nuevaInstancia9_2)

	var nuevaInstanciaPlayer = EscPlayer.instantiate()
	nuevaInstanciaPlayer.position = Vector3(0, 2, 0)
	add_child(nuevaInstanciaPlayer)

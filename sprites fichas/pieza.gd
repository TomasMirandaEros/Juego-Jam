extends Node2D
'''
leer esto riqui

lo que voy a hacer con esta escena es que va hacer un padre sin textura ni coliciones
despues para hacer cada una de las piezas es como crear una escena hederitaria de esta,
y despues poner la textura y toda esa mierda, como en POO (Programacion Orientada a Objetos) 
con el milei en escuela publica.
te recomiendo que no lo hagas vos, yo te recomendatia que hagas los NPC y un cuadro de texto
buscalo en youtube, hay una millonada de tutoriales, y cuando yo este libre, sigo yo con las piezas 
de mierda

cachai?
'''
var press:bool = false #variable para saber si el mouse esta presionando
var mover:bool #variable para saber si el personaje esta el el bloque

func _process(delta):
	if press: #asi es una forma sencilla de poner (if press == true:)
		move() 

func move(): #funcion para mover la pieza
	global_position=get_global_mouse_position()
	
	
func _on_area_2d_body_entered(body): #si el personaje entra en la pieza (lo voy a borrar)
	mover = false
	body.EnPlataforma = true


func _on_area_2d_body_exited(body):#si el personaje sale de la pieza (lo voy a borrar)
	var mover = true
	body.EnPlataforma = false

func _on_area_2d_input_event(viewport, event, shape_idx): #funcion para cuando hace click
	if not mover: #: si jugador no esta en el bloque
		if event is InputEventScreenTouch:
			if event.is_pressed():
				press = true
			else:
				press = false

extends CharacterBody2D
var push = false
var direction=0
var directiony =0
const PLAYER = preload("res://scenes/player.tscn")

func _physics_process(delta: float) -> void:
	if push:
		velocity.y =directiony*delta*500
		velocity.x =direction*delta*700
		move_and_slide()
	else:
		velocity.x = 0
		velocity.y = 0
		move_and_slide()
	
	
	

func _on_rechts_body_entered(body:) -> void:
	direction= -1
	push= true



func _on_rechts_body_exited(PLAYER) -> void:
	direction= 0
	push= false

func _on_links_body_entered(PLAYER) -> void:
	direction= 1
	push= true

func _on_links_body_exited(PLAYER) -> void:
	direction= 0
	push= false


func _on_oben_body_entered(body: Node2D) -> void:
	directiony= 1 
	push= true


func _on_oben_body_exited(body: Node2D) -> void:
	directiony= 0
	push= false


func _on_unten_body_entered(body: Node2D) -> void:
	directiony= -1 
	push= true


func _on_unten_body_exited(body: Node2D) -> void:
	directiony= 0
	push= false

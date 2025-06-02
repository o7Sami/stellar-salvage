extends CharacterBody2D
var push = false
var direction=0
const PLAYER = preload("res://scenes/player.tscn")

func _physics_process(delta: float) -> void:
	if push:
		
		velocity.x =direction*delta*500
	else:
		velocity.x = 0
	
	
	
	

func _on_rechts_body_entered(body:) -> void:
	direction= -1
	push= true
	print("ho^^")


func _on_rechts_body_exited(PLAYER) -> void:
	direction= 0
	push= false

func _on_links_body_entered(PLAYER) -> void:
	direction= 1
	push= true

func _on_links_body_exited(PLAYER) -> void:
	direction= 0
	push= false

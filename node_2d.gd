extends CharacterBody2D
var push = false
var direction=0
var directionY=0
const PLAYER = preload("res://scenes/player.tscn")

func _physics_process(delta: float) -> void:
	if push== true:
		move_and_slide()
		velocity.x =direction*delta*5000
		velocity.y =directionY*delta*5000
	else:
		velocity.x = 0
		velocity.y = 0
	
	
	
	

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


func _on_oben_body_entered(PLAYER) -> void:
	directionY= 1
	push= true


func _on_oben_body_exited(PLAYER) -> void:
	directionY= 0
	push= false
	print("ho^^")
func _on_unten_body_entered(PLAYER) -> void:
	directionY= -1
	push= true

func _on_unten_body_exited(PLAYER) -> void:
	directionY= 0
	push= false

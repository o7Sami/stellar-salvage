extends CharacterBody2D


const SPEED = 100.0
const JUMP_VELOCITY = -400.0
#var tot = false


func _physics_process(_delta: float) -> void:

	
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	#if tot == false:
	var directionx := Input.get_axis("links", "rechts")
	if directionx:
		velocity.x = directionx * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	var directiony := Input.get_axis("oben", "runter")
	if directiony:
		velocity.y = directiony * SPEED
	else:
		velocity.y = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
  
	

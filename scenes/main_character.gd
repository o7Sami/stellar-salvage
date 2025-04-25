extends CharacterBody2D

@export var speed = 400
@onready var sprite_2d : AnimatedSprite2D = $Sprite2D

func get_input():
	var input_direction = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * speed


func _physics_process(delta):
	get_input()
	move_and_slide()
	animation()
	
func animation():
	var isLeft = velocity.x < 0
	sprite_2d.flip_h = isLeft
	if Input.is_action_pressed("left"):
		sprite_2d.animation = "running"
	if Input.is_action_just_released("left"):
		sprite_2d.animation = "idle"
	if Input.is_action_pressed("right"):
		sprite_2d.animation = "running"
	if Input.is_action_just_released("right"):
		sprite_2d.animation = "idle"
	if Input.is_action_pressed("up"):
		sprite_2d.animation = "running"
	if Input.is_action_just_released("up"):
		sprite_2d.animation = "idle"
	if Input.is_action_pressed("down"):
		sprite_2d.animation = "running"
	if Input.is_action_just_released("down"):
		sprite_2d.animation = "idle"

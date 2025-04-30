extends CharacterBody2D

@export var speed = 400
@onready var sprite_2d : AnimatedSprite2D = $Sprite2D
var life = 3

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

func _on_body_entered(body):
	print("You died!")
	# life -= 1
	#if life == 3:
		#sprite_2d = "3_hearts"
	#if life == 2:
		#sprite_2d = "2_hearts"
	#if life == 1:
		#sprite_2d = "1_hearts"
	#if life < 1:
		#Engine.time_scale = 0.5
		#body.get_node("CollisionShape2D").queue_free()

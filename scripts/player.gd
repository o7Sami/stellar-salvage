extends CharacterBody2D
@onready var sprite_2d: AnimatedSprite2D = $Sprite2D
@export var MaxHealth:int = 5
@onready var currentHealth:int = MaxHealth
const SPEED = 100.0
signal healthChanged


func get_input():
	var input_direction = Input.get_vector("links", "rechts", "oben", "runter")
	velocity = input_direction * SPEED


func _physics_process(delta):
	get_input()
	move_and_slide()
	animation()
	
func animation():
	var isLeft = velocity.x < 0
	sprite_2d.flip_h = isLeft
	if Input.is_action_pressed("links"):
		sprite_2d.animation = "running"
	if Input.is_action_just_released("links"):
		sprite_2d.animation = "idle"
	if Input.is_action_pressed("rechts"):
		sprite_2d.animation = "running"
	if Input.is_action_just_released("rechts"):
		sprite_2d.animation = "idle"
	if Input.is_action_pressed("oben"):
		sprite_2d.animation = "running"
	if Input.is_action_just_released("oben"):
		sprite_2d.animation = "idle"
	if Input.is_action_pressed("runter"):
		sprite_2d.animation = "running"
	if Input.is_action_just_released("runter"):
		sprite_2d.animation = "idle"

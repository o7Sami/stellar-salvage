extends CharacterBody2D

var speed = 400
var target_position
var despawn_time = 1

func _ready() -> void:
	pass

func _physics_process(delta: float) -> void:
	velocity= target_position * speed
	move_and_slide()

func despawn()-> void:
	await get_tree().create_timer(despawn_time).timeout
	queue_free()

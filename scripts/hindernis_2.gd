extends Node2D

const speed = 40

var direction = 1
@onready var ray_cast_up: RayCast2D = $RayCastUp
@onready var ray_cast_down: RayCast2D = $RayCastDown

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if ray_cast_up.is_colliding():
		direction = 1
	if ray_cast_down.is_colliding():
		direction = -1
	position.y += direction * speed * _delta

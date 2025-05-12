extends CharacterBody2D

@onready var marker_2d: Marker2D = $Marker2D
const BULLET = preload("res://bullet.tscn")

func _process(delta: float) ->  void:
	look_at(get_global_mouse_position())

func shoot()-> void:
	var new_bullet = BULLET.instantiate()
	new_bullet.position = marker_2d.global_position
	new_bullet.target_position = (get_global_mouse_position() - marker_2d.global_position).normalized()
	GlobalData.add_child(new_bullet)

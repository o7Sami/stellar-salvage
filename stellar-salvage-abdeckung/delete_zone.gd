extends Node2D
const PLAYER = preload("res://scenes/player.tscn")
@onready var abdeckung: Sprite2D = $"../abdeckung"



	
func _on_body_entered(_player) -> void:
	abdeckung.hide()

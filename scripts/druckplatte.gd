extends Area2D
const PLAYER = preload("res://scenes/player.tscn")
const BOX = preload("res://scenes/blöcke.tscn")
@onready var animated_sprite : AnimatedSprite2D =$AnimatedSprite2D

signal pressed
signal unpressed


func _on_body_entered(body: CharacterBody2D) -> void:
	print("eeee")
	animated_sprite.animation = "down"
	emit_signal("pressed")

func _on_body_exited(body: CharacterBody2D) -> void:
	print("eeee")
	animated_sprite.animation = "up"
	emit_signal("unpressed")
	
	

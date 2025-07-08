extends Area2D
@onready var animated_sprite : AnimatedSprite2D =$AnimatedSprite2D
const POPUP = preload("res://scenes/fake.tscn")


func _on_body_entered(body: CharacterBody2D) -> void:
	animated_sprite.animation = "down"
	POPUP.sichtbar()
	


func _on_body_exited(body: CharacterBody2D) -> void:
	animated_sprite.animation = "up"
	POPUP.unsichtbar()

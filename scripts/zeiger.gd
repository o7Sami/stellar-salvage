extends Node2D
@onready var animated_sprite : AnimatedSprite2D =$AnimatedSprite2D

func _on_druckplatte_2_pressed() -> void:
	animated_sprite.animation = "on"


func _on_druckplatte_2_unpressed() -> void:
	animated_sprite.animation = "off"

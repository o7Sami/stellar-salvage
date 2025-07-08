extends Area2D
@onready var animated_sprite : AnimatedSprite2D =$AnimatedSprite2D
@export var tuer: Node2D 


func _on_body_entered(body: CharacterBody2D) -> void:
	animated_sprite.animation = "down"
	tuer._on_druckplatte_pressed()


func _on_body_exited(body: CharacterBody2D) -> void:
	animated_sprite.animation = "up"
	tuer._on_druckplatte_unpressed()

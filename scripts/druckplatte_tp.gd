extends Area2D
@onready var animated_sprite : AnimatedSprite2D =$AnimatedSprite2D



func _on_body_entered(body: CharacterBody2D) -> void:
	animated_sprite.animation = "down"
	if body.is_in_group("player"):
		body.set_position($Marker2D.global_position)


func _on_body_exited(body: CharacterBody2D) -> void:
	animated_sprite.animation = "up"

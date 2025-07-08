extends Area2D
@onready var animated_sprite : AnimatedSprite2D =$AnimatedSprite2D
@onready var canvas_layer: CanvasLayer = $CanvasLayer



func _on_body_entered(body: CharacterBody2D) -> void:
	animated_sprite.animation = "down"
	canvas_layer.sichtbar()
	


func _on_body_exited(body: CharacterBody2D) -> void:
	animated_sprite.animation = "up"
	canvas_layer.unsichtbar()

extends Area2D
const PLAYER = preload("res://scenes/player.tscn")
const BOX = preload("res://scenes/blöcke.tscn")
@onready var animated_sprite : AnimatedSprite2D =$AnimatedSprite2D
@export var tuer: Node2D 


func _ready() -> void:
	connect("body_entered", _on_body_entered)
	connect("area_exited", _on_body_exited)

func _on_body_entered(body: CharacterBody2D) -> void:
	animated_sprite.animation = "down"
	tuer._on_druckplatte_pressed()


func _on_body_exited(body: CharacterBody2D) -> void:
	animated_sprite.animation = "up"
	tuer._on_druckplatte_unpressed()

	
	

extends CanvasLayer
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D


func changeLife(currentHealth: int) -> void:
	if currentHealth == 3:
		animated_sprite_2d.play("3Life")
	if currentHealth == 2:
		animated_sprite_2d.play("2Life")
	if currentHealth == 1:
		animated_sprite_2d.play("1Life")
	if currentHealth == 0:
		get_tree().reload_current_scene()

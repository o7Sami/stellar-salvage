extends Area2D

signal Healthchanged
@onready var timer: Timer = $Timer


func _on_body_entered(_player) -> void:
	_player.currentHealth -= 1
	print(_player.currentHealth)
	_player.Healthchanged.emit(_player.currentHealth)
	if _player.currentHealth == 0:
		timer.start()


func _on_timer_timeout() -> void:
	get_tree().change_scene_to_file("res://scenes/endscreen.tscn")

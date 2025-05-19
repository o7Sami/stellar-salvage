extends Area2D
@onready var timer: Timer = $Timer
@export var enemy: Node2D


func _on_body_entered(_body: Node2D) -> void:
	enemy.agrovated = 1
	timer.start()


func _on_body_exited(body: Node2D) -> void:
	enemy.agrovated = 0

func _on_timer_timeout() -> void:
	enemy.makePath()

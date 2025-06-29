extends Area2D

@onready var timer: Timer = $Timer
#@onready var player2: CharacterBody2D = $"."

func _on_body_entered(_player) -> void:
	print("You Died!") 
	timer.start()
	#player2.tot = true


func _on_timer_timeout() -> void:
	get_tree().change_scene_to_file("res://scenes/endscreen.tscn")
	Global.Raumschiffteile_gesamt = 0
	

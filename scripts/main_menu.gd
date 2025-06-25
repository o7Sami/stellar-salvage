extends Control



func _on_tutorial_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/tutorial.tscn")
	print("tutorial")

func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/game.tscn")

func _on_optionen_pressed() -> void:

	print("options")

func _on_verlassen_pressed() -> void:
	get_tree().quit()


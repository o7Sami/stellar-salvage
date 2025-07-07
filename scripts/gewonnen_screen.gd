extends Control






func _on_hauptmenü_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")


func _on_spiel_starten_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/game.tscn")
	Global.aktuelle_Scene = 0
	Global.Raumschiffteile_gesamt = 0
	Global.currentHealth = Global.MaxHealth

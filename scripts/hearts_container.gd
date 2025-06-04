extends HBoxContainer

const HEART_GUI = preload("res://scenes/heart_gui.tscn")


func setMaxHealth(max: int):
	for i in range(max):
		var heart = HEART_GUI.instantiate()
		add_child(heart)

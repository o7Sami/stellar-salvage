extends HBoxContainer

@onready var HeartGui = preload("res://scenes/heart_gui.tscn")

func setMaxHealth(max: int):
	for i in range(max):
		var heart = HeartGui.instantiate()
		add_child(heart)

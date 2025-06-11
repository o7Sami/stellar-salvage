extends HBoxContainer

const HEART_GUI = preload("res://scenes/heart_gui.tscn")


func setMaxHealth(max: int):
	for i in range(max):
		var heart = HEART_GUI.instantiate()
		add_child(heart)


func updateHearts(currentHealth: int):
	var hearts = get_children()
	
	for i in range(currentHealth):
		hearts[i].update(true)
	
	for i in range(currentHealth, hearts.size()):
		hearts[i].update(false)

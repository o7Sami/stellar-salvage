extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_spiel_starten_pressed() -> void:
	Global.MaxHealth = Global.startHealth
	Global.aktuelle_Scene = 0
	Global.Raumschiffteile_gesamt = 0
	Global.currentHealth = Global.MaxHealth
	get_tree().change_scene_to_file("res://scenes/game.tscn")


func _on_hauptmenü_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
	Global.aktuelle_Scene = 0
	Global.Raumschiffteile_gesamt = 0
	Global.currentHealth = Global.MaxHealth

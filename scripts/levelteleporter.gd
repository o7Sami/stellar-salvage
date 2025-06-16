extends Area2D

@onready var game_manager: Node = %GameManager

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	if Global.Raumschiffteile_gesamt > Global.aktuelle_Scene:
			if Global.Raumschiffteile_gesamt == 1:
				get_tree().change_scene_to_file("res://scenes/welt_2.tscn")
			if Global.Raumschiffteile_gesamt == 2:
				get_tree().change_scene_to_file("res://scenes/welt_3.tscn")
			if Global.Raumschiffteile_gesamt == 3:
				get_tree().change_scene_to_file("res://scenes/welt_4.tscn")
			game_manager.naechsteScene()
		

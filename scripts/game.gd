extends Node2D

@onready var hearts_container: HBoxContainer = $CanvasLayer/heartsContainer
@onready var player: CharacterBody2D = $Player


func _ready() -> void:
	hearts_container.setMaxHearts(Global.MaxHealth)
	Global.healthChanged.connect(hearts_container.updateHearts)

 
func _process(delta: float) -> void:
	hearts_container.updateHearts(Global.currentHealth)

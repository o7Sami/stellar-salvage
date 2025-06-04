extends Node2D

@onready var hearts_container: HBoxContainer = $CanvasLayer/HeartsContainer

func _ready() -> void:
	hearts_container.setMaxHealth(4)

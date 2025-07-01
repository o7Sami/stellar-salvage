extends Node2D

@onready var player: CharacterBody2D = $Player
@onready var hearts_container: HBoxContainer = $CanvasLayer/HeartsContainer

func _ready() -> void:
	hearts_container.setMaxHealth(player.Maxhealth)
	hearts_container.updateHearts(player.currentHealth)
	player.Healthchanged.connect(hearts_container.updateHearts)

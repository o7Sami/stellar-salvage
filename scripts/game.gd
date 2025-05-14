extends Node2D
@onready var player: CharacterBody2D = $Player
@onready var canvas_layer: CanvasLayer = $CanvasLayer

func _process(_delta: float) -> void:
	canvas_layer.changeLife(player.Health)

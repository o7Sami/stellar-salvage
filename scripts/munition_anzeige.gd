extends CanvasLayer

@onready var munition: Label = %Munition
const Gun = preload("res://scripts/gun.gd")

func _process(delta: float) -> void:
	munition.text = str(Global.Schuesse)

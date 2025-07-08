extends CanvasLayer
var sichtbarkeit = false
@onready var sprite_2d: Sprite2D = $MarginContainer/Sprite2D





func sichtbar():	 sprite_2d.visible = true

func unsichtbar():
	sprite_2d.visible = false

extends CanvasLayer
var sichtbarkeit = false

func _ready() -> void:
	if sichtbarkeit== true:
		self.visible = true
	else:
		self.visible = false

func sichtbar():
	sichtbarkeit = true

func unsichtbar():
	sichtbarkeit = false

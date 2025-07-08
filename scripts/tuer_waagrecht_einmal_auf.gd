extends StaticBody2D
var offen = false

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var game_manager: Node = %GameManager
@onready var timer: Timer = $Timer

func _process(_delta: float) -> void:
	if offen == true:
		animated_sprite_2d.play("offen")
		set_collision_layer_value(1,false)
		
func _on_druckplatte_pressed():
	offen = true
func _on_druckplatte_unpressed():
	pass

extends StaticBody2D
var offen = false

@onready var game_manager: Node = %GameManager
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var timer: Timer = $Timer

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if offen == true:
		animated_sprite_2d.play("offen")
		set_collision_layer_value(1,false)
	else:
		animated_sprite_2d.play("geschlossen")
		set_collision_layer_value(2,false)


func _on_druckplatte_4_pressed() -> void:
	offen = true


func _on_druckplatte_4_unpressed() -> void:
	offen = false
	set_collision_layer_value(1,true)

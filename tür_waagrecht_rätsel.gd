extends StaticBody2D


var offen = false

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var game_manager: Node = %GameManager
@onready var timer: Timer = $Timer



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if offen == true:
		animated_sprite_2d.play("offen")
		set_collision_layer_value(1,false)
	else:
		animated_sprite_2d.play("geschlossen")
		set_collision_layer_value(2,false)

func _ready() -> void:
	pass
	#Global.pressed.connect(_on_druckplatte_pressed())
	#Global.unpressed.connect(_on_druckplatte_unpressed())

func _on_druckplatte_pressed():
	offen = true

func _on_druckplatte_unpressed():
	offen = false
	set_collision_layer_value(1,true)


func _on_druckplatte_2_pressed():
	offen = true

func _on_druckplatte_2_unpressed() -> void:
	offen = false
	set_collision_layer_value(1,true)


func _on_druckplatte_5_pressed() -> void:
	offen = true


func _on_druckplatte_5_unpressed() -> void:
	offen = false
	set_collision_layer_value(1,true)

extends StaticBody2D

var offen = false

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var ray_cast_up: RayCast2D = $RayCastUp
@onready var ray_cast_down: RayCast2D = $RayCastDown
@onready var game_manager: Node = %GameManager

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if offen == true:
		animated_sprite_2d.play("offen")
		set_collision_layer_value(1,false)
	else:
		animated_sprite_2d.play("geschlossen")
		set_collision_layer_value(2,false)
		
	if ray_cast_down.is_colliding() or ray_cast_up.is_colliding():
		if game_manager.keys > 0 and offen == false:
			offen = true
			game_manager.sub_keys()

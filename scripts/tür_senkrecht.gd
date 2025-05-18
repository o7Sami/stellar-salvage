extends StaticBody2D

var offen = false

@onready var game_manager: Node = %GameManager
@onready var ray_cast_right: RayCast2D = $RayCastRight
@onready var ray_cast_left: RayCast2D = $RayCastLeft
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if offen == true:
		animated_sprite_2d.play("offen")
		set_collision_layer_value(1,false)
	else:
		animated_sprite_2d.play("geschlossen")
		set_collision_layer_value(2,false)
	
	if ray_cast_right.is_colliding() or ray_cast_left.is_colliding():
		if game_manager.keys > 0 and offen == false:
			offen = true
			game_manager.sub_keys()

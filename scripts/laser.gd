extends Node2D

const maxrange = 5000000 

var based_width = 2
var widthy = based_width
var shoot = false
@export var marker_2d = Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$Line2D.width = widthy
	var marker2D_position = marker_2d.position
	var max_cast_to = marker2D_position * maxrange
	$RayCast2D.target_position = max_cast_to
	
	if $RayCast2D.is_colliding():
		$reference.global_position = $RayCast2D.get_collision_point()
		$Line2D.set_point_position(1,$Line2D.to_local($reference.global_position))
	else:
		$reference.global_position = $RayCast2D.target_position
		$Line2D.points[1] = $reference.global_position

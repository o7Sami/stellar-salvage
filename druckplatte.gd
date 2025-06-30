extends Area2D



signal pressed
signal unpressed

func _on_area_2d_body_entered(body: Node2D) -> void:
	emit_signal("pressed")

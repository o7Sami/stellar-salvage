extends Area2D
 
 
const SPEED: int = 300
 
 
func _process(delta: float) -> void:
	position += transform.x * SPEED * delta
 
 
func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()



func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("enemy"):
		print("aaa")
		queue_free()
	else:
		queue_free()

extends Area2D
 
 
const SPEED: int = 300
 
 
func _process(delta: float) -> void:
	position += transform.x * SPEED * delta
 
 
func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()



func _on_body_entered(body: Node2D) -> void:
	#if body.is_in_group("Enemy"):
		#body.get_damage(damage)
		#queue_free()
	queue_free()

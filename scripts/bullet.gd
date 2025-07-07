extends Area2D
 
 
const SPEED: int = 300
 
 
func _process(delta: float) -> void:
	position += transform.x * SPEED * delta
 
 
func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()



func _on_body_entered(_Enemy:CharacterBody2D) -> void:
	_Enemy.schaden()
	queue_free()



func _on_area_2d_body_entered(body: Node2D) -> void:
	queue_free()

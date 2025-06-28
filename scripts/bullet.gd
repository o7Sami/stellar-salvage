extends Area2D
 
 
const SPEED: int = 300
const SHOOTING_SOUND = preload("res://assets/sounds/Shooting sound.wav")
 
func _process(delta: float) -> void:
	position += transform.x * SPEED * delta
 
 
func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()



func _on_body_entered(body: Node2D) -> void:
	queue_free()




func _on_audio_stream_player_tree_entered() -> void:
	$AudioStreamPlayer.play()

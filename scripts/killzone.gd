extends Area2D
var getroffen: bool = false
@onready var timer: Timer = $Timer

func _on_body_entered(_player) -> void:
	if getroffen == false:
		_player.Health -= 1
		print("You Died!") 
		getroffen = true
		timer.start()




func _on_timer_timeout() -> void:
	getroffen = false

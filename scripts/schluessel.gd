extends Area2D

#var position 
@onready var game_manager: Node = %GameManager

func _on_body_entered(body):
	game_manager.add_keys()
	SoundManager.Schluessel_abspielen()
	queue_free()

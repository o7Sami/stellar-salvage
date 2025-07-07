extends Area2D




func _on_body_entered(body):
		Global.add_keys()
		SoundManager.Schluessel_abspielen()
		queue_free()

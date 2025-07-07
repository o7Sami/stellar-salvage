extends Area2D




func _on_body_entered(body: Node2D) -> void:
	Global.munition_aufsammeln()
	queue_free()

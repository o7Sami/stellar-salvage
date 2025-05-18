extends Area2D

var da: bool = false



func _on_body_entered(_body: Node2D) -> void:
	da = true
	print("g")

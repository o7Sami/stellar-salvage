extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(_player) -> void:
	if Global.MaxHealth > Global.currentHealth:
		Global.currentHealth +=1
		SoundManager.Heilen_abspielen()
		queue_free()

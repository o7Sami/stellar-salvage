extends Area2D

@onready var timer: Timer = $Timer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	Global.Raumschiffteile_gesamt -=1
	timer.start()
	SoundManager.Teleporter_abspielen()


func _on_timer_timeout() -> void:
	get_tree().change_scene_to_file("res://scenes/tutorial_geschafft_screen.tscn")

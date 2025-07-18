extends Area2D

var drinnen: bool = false
@onready var timer: Timer = $Timer
@onready var timer_2: Timer = $Timer2


func _on_body_entered(_player) -> void:
	drinnen = true
	Global.currentHealth -= 1
	Global.healthChanged.emit(Global.currentHealth)
	SoundManager.Spieler_schaden_abspielen()
	timer_2.start()
	if Global.currentHealth < 1:
		timer.start()

func _on_timer_timeout() -> void:
	SoundManager.verlieren_abspielen()
	get_tree().change_scene_to_file("res://scenes/endscreen.tscn")
	Global.Raumschiffteile_gesamt = 0


func _on_timer_2_timeout() -> void:
	if drinnen == true:
		Global.currentHealth -= 1
		Global.healthChanged.emit(Global.currentHealth)
		SoundManager.Spieler_schaden_abspielen()
		timer_2.start()
	if Global.currentHealth < 1:
		timer.start()


func _on_body_exited(body: Node2D) -> void:
	drinnen = false

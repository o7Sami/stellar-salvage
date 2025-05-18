extends CharacterBody2D

const speed = 20
@export var player: Node2D
@onready var navigation_agent_2d: NavigationAgent2D = $NavigationAgent2D
@onready var agro: Area2D = $Agro

func _physics_process(delta: float) -> void:
	if agro.da == true:
		var direction = to_local(navigation_agent_2d.get_next_path_position()).normalized()
		velocity = direction * speed
		move_and_slide()

func makePath() -> void:
	navigation_agent_2d.target_position = player.global_position




func _on_timer_timeout() -> void:
	makePath()

extends CharacterBody2D

var agrovated = 0
const speed = 20
@export var player: Node2D
@onready var navigation_agent_2d: NavigationAgent2D = $NavigationAgent2D


func _physics_process(delta: float) -> void:
	if agrovated == 1:
		var direction = to_local(navigation_agent_2d.get_next_path_position()).normalized()
		velocity = direction * speed
		move_and_slide()
	

func makePath() -> void:
	navigation_agent_2d.target_position = player.global_position

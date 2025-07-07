extends CharacterBody2D

@export var enemy_stats:Resource

var agrovated = 0
@export var player: Node2D
@onready var navigation_agent_2d: NavigationAgent2D = $NavigationAgent2D
@onready var schluessel_spawn: Marker2D = $SchluesselSpawn
const SCHLUESSEL = preload("res://scenes/schluessel.tscn")
@onready var game_manager: Node = %GameManager

func _ready():
	set_modulate(enemy_stats.appearance())

func _physics_process(delta: float) -> void:
	if agrovated == 1:
		var direction = to_local(navigation_agent_2d.get_next_path_position()).normalized()
		velocity = direction * enemy_stats.speed
		move_and_slide()
	

func makePath() -> void:
	navigation_agent_2d.target_position = player.global_position

func sterben():

	if enemy_stats.dropKey == true:
		var pos = schluessel_spawn.position
		var pos_global = to_global(pos)
		var schluessel = SCHLUESSEL.instantiate()
		schluessel.position =   Vector2(pos_global)
		get_node("/root/Game").add_child(schluessel)
		queue_free()
	queue_free()




func schaden():
	enemy_stats.health -= 1
	if enemy_stats.health == 0:
		sterben()
	

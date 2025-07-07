extends CharacterBody2D

var game = get_parent()
@export var enemy_stats:Resource
@onready var key = preload("res://scenes/schluessel.tscn")
var agrovated = 0
@export var player: Node2D
@onready var navigation_agent_2d: NavigationAgent2D = $NavigationAgent2D

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
		var playerpos = get_parent().get_node("this").global_position
		var schluessel = key.instantiate()
		schluessel.position = playerpos  #Vector2(10,1)
		get_node("/root").add_child(schluessel)
		queue_free()





func schaden():
	enemy_stats.health -= 1
	if enemy_stats.health == 0:
		sterben()
	

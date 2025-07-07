extends CharacterBody2D

@export var enemy_stats:Resource

var agrovated = 0
@export var player: Node2D
@onready var navigation_agent_2d: NavigationAgent2D = $NavigationAgent2D
@onready var schluessel_spawn: Marker2D = $SchluesselSpawn
@onready var sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
const SCHLUESSEL = preload("res://scenes/schluessel.tscn")
const MUNI = preload("res://scenes/munition.tscn")

func _ready():
	match enemy_stats.type:
		0:
			sprite_2d.animation = "Default"
		1:
			sprite_2d.animation = "chefidle"


func _physics_process(delta: float) -> void:
	if agrovated == 1:
		var direction = to_local(navigation_agent_2d.get_next_path_position()).normalized()
		velocity = direction * enemy_stats.speed
		move_and_slide()
		match enemy_stats.type:
			0:
				sprite_2d.animation = "aggro"
			1:
				sprite_2d.animation = "chefaggro"
	if agrovated == 0:
		match enemy_stats.type:
			0:
				sprite_2d.animation = "Default"
			1:
				sprite_2d.animation = "chefidle"



func makePath() -> void:
	navigation_agent_2d.target_position = player.global_position

func sterben():
	var rando = randi_range(1,2)
	if rando == 2:
		var pos = schluessel_spawn.position + Vector2(10,10)
		var pos_global = to_global(pos)
		var muni = MUNI.instantiate()
		muni.position =   Vector2(pos_global)
		get_node("/root/Game").add_child(muni)
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
	

extends Node

var Raumschiffteile_gesamt = 0
var aktuelle_Scene = 0
@export var MaxHealth: int = 5
@export var currentHealth: int = MaxHealth
signal healthChanged
signal maxChanged

var keys = 0

func add_keys():
	keys += 1
	
func sub_keys():
	keys -= 1

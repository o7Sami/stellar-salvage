extends Node

signal healthChanged
signal maxChanged
var Schuesse: int = 30
var keys = 0
var Schwierigkeit = 1
var Raumschiffteile_gesamt = 0
var aktuelle_Scene = 0
var startHealth: int = 5
@export var MaxHealth: int = startHealth
@export var currentHealth: int = MaxHealth

func Beginn():
	if Schwierigkeit == 0:
		startHealth = 7
	if Schwierigkeit == 1:
		startHealth = 5
	if Schwierigkeit == 2:
		startHealth = 3
	MaxHealth = startHealth
	currentHealth = MaxHealth

func add_keys():
	keys += 1
	
func sub_keys():
	keys -= 1
func sub_Schuesse():
	Schuesse -= 1

func Schuesse_reset():
	if Schwierigkeit == 0:
		Schuesse = 50
	if Schwierigkeit == 1:
		Schuesse = 30
	if Schwierigkeit == 2:
		Schuesse = 25

func munition_aufsammeln():
	Schuesse = Schuesse + randi_range(10,20)

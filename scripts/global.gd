extends Node

var Raumschiffteile_gesamt = 0
var aktuelle_Scene = 0
var startHealth: int = 5
@export var MaxHealth: int = startHealth
@export var currentHealth: int = MaxHealth
signal healthChanged
signal maxChanged

var Schuesse: int = 30
var keys = 0

func add_keys():
	keys += 1
	
func sub_keys():
	keys -= 1
func sub_Schuesse():
	Schuesse -= 1

func Schuesse_reset():
	Schuesse = 30

func munition_aufsammeln():
	Schuesse = Schuesse + randi_range(10,20)

func sichtbar():
	$CanvasLayer.visible = true
func unsichtbar():
	$CanvasLayer.visible = false

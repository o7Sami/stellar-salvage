extends Node


var keys = 0

func add_keys():
	keys += 1
	
func sub_keys():
	keys -= 1
	
func add_Raumschiffteil():
	Global.Raumschiffteile_gesamt += 1

func naechsteScene():
	Global.aktuelle_Scene += 1
	print("nächste")

extends Node

@onready var schlüsselanzahl: Label = %Schlüsselanzahl

var keys = 0

func add_keys():
	keys += 1
	schlüsselanzahl.text = str(keys)

func sub_keys():
	keys -= 1
	schlüsselanzahl.text = str(keys)

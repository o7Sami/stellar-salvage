extends Resource
class_name enemy_type

@export var name:String
@export var type: types
@export var speed: float
@export var health: int
#@export var texture: Texture2D
@export var dropKey: bool


enum types{
	CREW_MEBMBER,
	CAPTAIN
}

func appearance():
	var color: Color
	match type:
		0:
			color= Color(1, 1, 1, 1)
		1:
			color = Color(1, 0, 0.14, 1)
	return color

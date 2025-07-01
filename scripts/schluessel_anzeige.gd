extends CanvasLayer

@onready var game_manager: Node = %GameManager
@onready var schlüsselanzahl: Label = %Schlüsselanzahl

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	schlüsselanzahl.text = str(game_manager.keys)

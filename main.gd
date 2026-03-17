extends Node3D

@onready var sub_viewport_container: SubViewportContainer = $Diálogo/SubViewportContainer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	prepareDialog()
	pass # Replace with function body.

func prepareDialog() -> bool:
	sub_viewport_container.visible = false
	return true
	 
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

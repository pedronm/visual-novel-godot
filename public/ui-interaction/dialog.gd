extends Node3D

@onready var rich_text_label: RichTextLabel = $TextBox/Control/RichTextLabel
@onready var label: Label = $Header/Control/Label

# it will receive the array of mgs to show
var ms_array = []
# retorna caso haja mensagens 
var next = false 

var 

func _next_dialog() -> void:
	pass

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

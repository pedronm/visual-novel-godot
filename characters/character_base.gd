extends Node

class_name CharacterBase

@export var nome: String
@export var is_dialogavel: bool
@export var is_combativel: bool 

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print('esse é o :  %s ', name)
	print('da pra falar? : %s', is_dialogavel)
	print('da pra lutar? : %s', is_combativel)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

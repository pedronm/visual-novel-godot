extends CharacterBody3D

var MOVE_SPEED = 10
var GRAVITY_SPEED = 2

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

func do_gravity(delta):
	velocity.y -= GRAVITY_SPEED * delta

func move_character(delta):
	var move_y = Input.get_axis("move_up", "move_down")
	var move_x = Input.get_axis("move_left", "move_right")
	
	velocity.z = move_y * MOVE_SPEED * delta 
	velocity.x = move_x * MOVE_SPEED * delta 

func _physics_process(delta: float) -> void:
	do_gravity(delta)
	move_character(delta)	
	move_and_slide()

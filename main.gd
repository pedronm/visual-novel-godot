extends Node3D

@onready var sub_viewport_container: SubViewportContainer = $Diálogo/SubViewportContainer

var show_dialog = false
var dialog_acabou = false 

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	prepareDialog()	
	pass # Replace with function body.

func prepareDialog() -> bool:
	#sub_viewport_container.visible = false
	return true
	 
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	# When the user hits the dialog button
	if Input.is_action_just_pressed("action"):
		mostrar_dialogo()
	
	pass

func mostrar_dialogo():
	if dialog_acabou == false :
		## mostrar pagina x ou emitir um signal pra onde vai os textos
		sub_viewport_container.show()
		# método recursivo
		#mostrar_dialogo()
		dialog_acabou = true
	elif dialog_acabou == true :
		esconder_dialogo() 
	
func esconder_dialogo():
	await get_tree().create_timer(5)
	sub_viewport_container.hide()
	dialog_acabou = false

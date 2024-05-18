extends Node2D

var selected = false
var detector1 = false
var detector2 = false
var Ifinstantiate = false

func _ready():
	$detector1.connect("detector1", Callable(self, "_detector1ok"))
	$detector2.connect("detector2", Callable(self, "_detector2ok"))

func _process(delta):
	if (detector1 and detector2) and Ifinstantiate == false:
		var phy_quant3 = preload("res://tscn/phy_quant_3.tscn").instantiate()
		phy_quant3.global_position = Vector2(600, 500)
		get_tree().get_root().add_child(phy_quant3)
		detector1 = false
		detector2 = false
		Ifinstantiate = true
	else:
		detector1 = false
		detector2 = false

	pass

func _physics_process(delta):
	if selected:
		global_position = lerp(global_position, get_global_mouse_position(), 25*delta)
		
func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == 1 and not event.pressed:
			selected = false


func detector_input_event(viewport, event, shape_idx):
	if Input.is_action_just_pressed("click"):
		selected = true

func _detector1ok():
	print("yeahhh")
	detector1 = true

func _detector2ok():
	print("yeah")
	detector2 = true

func _button_ok():
	pass

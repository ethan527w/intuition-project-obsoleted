extends Node2D
var selected = false


func _process(delta):
	pass

func _physics_process(delta):
	if selected:
		global_position = lerp(global_position, get_global_mouse_position(), 25*delta)
		
func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == 1 and not event.pressed:
			selected = false



func shape_input_event(viewport, event, shape_idx):
	if Input.is_action_just_pressed("click"):
		selected = true

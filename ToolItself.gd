extends Area2D

var dragging = false
var original_position = Vector2()
signal ChangeTexture
var slot1ok:bool
var slot2ok:bool

func _ready():
	self.connect("ChangeTexture", Callable($"F=ma", "_changing"))


func _input(event): 
	if event is InputEventMouseButton:
		if event.button_index == 1:
			if event.pressed:
				var mouse_pos = get_global_mouse_position()
				if collide_point(mouse_pos):
					start_dragging(mouse_pos)
			else:
				end_dragging()

	elif event is InputEventMouseMotion:
		if dragging:
			global_position = get_global_mouse_position() - original_position



func _process(delta):
	if slot1ok and slot2ok:
		_change_texture()
	pass

# Function to check if a point is inside the global rectangle of the node
func collide_point(point: Vector2) -> bool:
	var global_rect = Rect2(global_position.x, global_position.y, $"F=ma".texture.get_size().x, $"F=ma".texture.get_size().y)
	return global_rect.has_point(point)

func start_dragging(mouse_pos):
	dragging = true
	original_position = mouse_pos - global_position

func end_dragging():
	dragging = false
	
func _change_texture():
	emit_signal("ChangeTexture")
	pass
	


func _on_slotone_slotone():
	slot1ok = true



func _on_slottwo_slottwo():
	slot2ok =true
	pass # Replace with function body.

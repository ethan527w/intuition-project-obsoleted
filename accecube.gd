extends Area2D

var dragging = false
var original_position = Vector2()

func _ready():
	self.add_to_group("Ele2")


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





# Function to check if a point is inside the global rectangle of the node
func collide_point(point: Vector2) -> bool:
	var global_rect = Rect2(global_position.x, global_position.y, $Sprite.texture.get_size().x, $Sprite.texture.get_size().y)
	return global_rect.has_point(point)

func start_dragging(mouse_pos):
	dragging = true
	original_position = mouse_pos - global_position

func end_dragging():
	dragging = false

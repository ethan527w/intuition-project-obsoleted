extends Area2D
signal slotone
var tool = get_parent()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	for index in get_overlapping_areas():
		if index.is_in_group("Ele1"):
			emit_signal("slotone")
	pass


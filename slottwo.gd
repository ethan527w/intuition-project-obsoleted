extends Area2D
signal slottwo
var tool = get_parent()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	for index in get_overlapping_areas():
		if index.is_in_group("Ele2"):
			emit_signal("slottwo")
	pass


extends Area2D

signal detector2

# Called when the node enters the scene tree for the first time.s
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	for i in get_overlapping_areas():
		if i.is_in_group("phyquant2"):
			emit_signal("detector2")
	pass

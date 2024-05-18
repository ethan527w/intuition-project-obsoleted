extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	for i in get_overlapping_areas():
		if i.is_in_group("phyquant3"):
			$DropArea.texture = load("res://sprite/congrats.png")

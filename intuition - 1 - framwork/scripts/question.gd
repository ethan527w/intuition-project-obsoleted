extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):	
	pass


func _on_quant_1_pressed():
	var phy_quant1 = preload("res://tscn/physical_quantity.tscn").instantiate()
	phy_quant1.global_position = Vector2(100, 200)
	get_tree().get_root().add_child(phy_quant1)


func _on_quant_2_pressed():
	var phy_quant2 = preload("res://tscn/phy_quant_2.tscn").instantiate()
	phy_quant2.global_position = Vector2(100, 400)
	get_tree().get_root().add_child(phy_quant2)


func _on_tool_pressed():
	var tool = preload("res://tscn/Tool.tscn").instantiate()
	tool.global_position = Vector2(100, 600)
	get_tree().get_root().add_child(tool)

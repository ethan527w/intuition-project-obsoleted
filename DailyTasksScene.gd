extends Control 

func _ready(): 
	var callable_for_menu = Callable(self, "_on_BackButton_pressed") 
	$BackButton.connect("pressed", callable_for_menu) 
	
	# Ensure panels are hidden initially
	hide_all_panels()
	
	# Connect each button to its respective function
	$ScrollContainer/VBoxContainer/Misson1.connect("pressed", Callable(self, "_on_misson1_pressed"))
	$ScrollContainer/VBoxContainer/Misson2.connect("pressed", Callable(self, "_on_misson2_pressed"))
	$ScrollContainer/VBoxContainer/Misson3.connect("pressed", Callable(self, "_on_misson3_pressed"))
	$ScrollContainer/VBoxContainer/Misson4.connect("pressed", Callable(self, "_on_misson4_pressed"))
	
	# Connect enter buttons
	$Container/M_Panel1/EnterButton1.connect("pressed", Callable(self, "_on_enter_mission1_pressed"))
	$Container/M_Panel2/EnterButton2.connect("pressed", Callable(self, "_on_enter_mission2_pressed"))
	$Container/M_Panel3/EnterButton3.connect("pressed", Callable(self, "_on_enter_mission3_pressed"))
	$Container/M_Panel4/EnterButton4.connect("pressed", Callable(self, "_on_enter_mission4_pressed"))

	
func _on_BackButton_pressed(): 
	get_tree().change_scene_to_file("res://Menu.tscn") 

func hide_all_panels():
	# Hide all panels
	$Container/M_Panel1.visible = false
	$Container/M_Panel2.visible = false
	$Container/M_Panel3.visible = false
	$Container/M_Panel4.visible = false

func _on_misson1_pressed():
	hide_all_panels()
	# Show M_Panel1
	$Container/M_Panel1.visible = true
	$Container/M_Panel1/Label.text = "This is the text for Mission 1"

func _on_misson2_pressed():
	hide_all_panels()
	# Show M_Panel2
	$Container/M_Panel2.visible = true
	$Container/M_Panel2/Label.text = "This is the text for Mission 2"


func _on_misson3_pressed():
	hide_all_panels()
	# Show M_Panel3
	$Container/M_Panel3.visible = true
	$Container/M_Panel3/Label.text = "This is the text for Mission 3"

func _on_misson4_pressed():
	hide_all_panels()
	# Show M_Panel4
	$Container/M_Panel4.visible = true
	$Container/M_Panel4/Label.text = "This is the text for Mission 4"

func _on_enter_mission1_pressed():
	# Change to Mission 1 scene
	get_tree().change_scene_to_file("res://Mission1Scene.tscn")

func _on_enter_mission2_pressed():
	# Change to Mission 2 scene
	get_tree().change_scene_to_file("res://Mission2Scene.tscn")

func _on_enter_mission3_pressed():
	# Change to Mission 3 scene
	get_tree().change_scene_to_file("res://Mission3Scene.tscn")

func _on_enter_mission4_pressed():
	# Change to Mission 4 scene
	get_tree().change_scene_to_file("res://Mission4Scene.tscn")

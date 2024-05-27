extends Node  # Or 'Control', depending on your root node type

func _ready():
	var callable_for_menu = Callable(self, "_on_BackButton1_pressed")
	$BackButton1.connect("pressed", callable_for_menu)
	
	# Initially hide all level buttons
	hide_all_level_buttons()
	

	# Connect Chapter buttons to their respective functions
	$ScrollContainer/Chapters/Chapter1Button.connect("pressed", Callable(self, "_on_chapter1_button_pressed"))
	$ScrollContainer/Chapters/Chapter2Button.connect("pressed", Callable(self, "_on_chapter2_button_pressed"))
	$ScrollContainer/Chapters/Chapter3Button.connect("pressed", Callable(self, "_on_chapter3_button_pressed"))
	$ScrollContainer/Chapters/Chapter4Button.connect("pressed", Callable(self, "_on_chapter4_button_pressed"))
	
	# Connect level buttons to their respective functions
	$ScrollContainer/Chapters/Chapter1Levels/Level1.connect("pressed", Callable(self, "_on_level1_1_pressed"))
	$ScrollContainer/Chapters/Chapter1Levels/Level2.connect("pressed", Callable(self, "_on_level1_2_pressed"))
	$ScrollContainer/Chapters/Chapter1Levels/Level3.connect("pressed", Callable(self, "_on_level1_3_pressed"))
	$ScrollContainer/Chapters/Chapter1Levels/Level4.connect("pressed", Callable(self, "_on_level1_4_pressed"))
	$ScrollContainer/Chapters/Chapter1Levels/Level5.connect("pressed", Callable(self, "_on_level1_5_pressed"))
	
	$ScrollContainer/Chapters/Chapter2Levels/Level1.connect("pressed", Callable(self, "_on_level2_1_pressed"))
	$ScrollContainer/Chapters/Chapter2Levels/Level2.connect("pressed", Callable(self, "_on_level2_2_pressed"))
	$ScrollContainer/Chapters/Chapter2Levels/Level3.connect("pressed", Callable(self, "_on_level2_3_pressed"))
	$ScrollContainer/Chapters/Chapter2Levels/Level4.connect("pressed", Callable(self, "_on_level2_4_pressed"))
	$ScrollContainer/Chapters/Chapter2Levels/Level5.connect("pressed", Callable(self, "_on_level2_5_pressed"))
	
	$ScrollContainer/Chapters/Chapter3Levels/Level1.connect("pressed", Callable(self, "_on_level3_1_pressed"))
	$ScrollContainer/Chapters/Chapter3Levels/Level2.connect("pressed", Callable(self, "_on_level3_2_pressed"))
	$ScrollContainer/Chapters/Chapter3Levels/Level3.connect("pressed", Callable(self, "_on_level3_3_pressed"))
	$ScrollContainer/Chapters/Chapter3Levels/Level4.connect("pressed", Callable(self, "_on_level3_4_pressed"))
	$ScrollContainer/Chapters/Chapter3Levels/Level5.connect("pressed", Callable(self, "_on_level3_5_pressed"))
	
	$ScrollContainer/Chapters/Chapter4Levels/Level1.connect("pressed", Callable(self, "_on_level4_1_pressed"))
	$ScrollContainer/Chapters/Chapter4Levels/Level2.connect("pressed", Callable(self, "_on_level4_2_pressed"))
	$ScrollContainer/Chapters/Chapter4Levels/Level3.connect("pressed", Callable(self, "_on_level4_3_pressed"))
	$ScrollContainer/Chapters/Chapter4Levels/Level4.connect("pressed", Callable(self, "_on_level4_4_pressed"))
	$ScrollContainer/Chapters/Chapter4Levels/Level5.connect("pressed", Callable(self, "_on_level4_5_pressed"))
	
	
func _on_BackButton1_pressed():
	get_tree().change_scene_to_file("res://Menu.tscn")

func hide_all_level_buttons():
	# Hide all level buttons initially
	print("Hiding all level buttons")
	if $ScrollContainer/Chapters/Chapter1Levels != null:
		$ScrollContainer/Chapters/Chapter1Levels.visible = false
	else:
		print("Chapter1Levels not found")

	if $ScrollContainer/Chapters/Chapter2Levels != null:
		$ScrollContainer/Chapters/Chapter2Levels.visible = false
	else:
		print("Chapter2Levels not found")

	if $ScrollContainer/Chapters/Chapter3Levels != null:
		$ScrollContainer/Chapters/Chapter3Levels.visible = false
	else:
		print("Chapter3Levels not found")

	if $ScrollContainer/Chapters/Chapter4Levels != null:
		$ScrollContainer/Chapters/Chapter4Levels.visible = false
	else:
		print("Chapter4Levels not found")
	
func _on_chapter1_button_pressed():
	hide_all_level_buttons()
	# Show Chapter 1 level buttons
	if $ScrollContainer/Chapters/Chapter1Levels != null:
		$ScrollContainer/Chapters/Chapter1Levels.visible = true
	else:
		print("Chapter1Levels not found")

func _on_chapter2_button_pressed():
	hide_all_level_buttons()
	# Show Chapter 2 level buttons
	if $ScrollContainer/Chapters/Chapter2Levels != null:
		$ScrollContainer/Chapters/Chapter2Levels.visible = true
	else:
		print("Chapter2Levels not found")

func _on_chapter3_button_pressed():
	hide_all_level_buttons()
	# Show Chapter 3 level buttons
	if $ScrollContainer/Chapters/Chapter3Levels != null:
		$ScrollContainer/Chapters/Chapter3Levels.visible = true
	else:
		print("Chapter3Levels not found")

func _on_chapter4_button_pressed():
	hide_all_level_buttons()
	# Show Chapter 4 level buttons
	if $ScrollContainer/Chapters/Chapter4Levels != null:
		$ScrollContainer/Chapters/Chapter4Levels.visible = true
	else:
		print("Chapter4Levels not found")

func _on_level1_1_pressed():
	# Change to Level 1-1 scene
	get_tree().change_scene_to_file("res://Level1Scene1.tscn")

func _on_level1_2_pressed():
	# Change to Level 1-2 scene
	get_tree().change_scene_to_file("res://Level1Scene2.tscn")

func _on_level1_3_pressed():
	# Change to Level 1-3 scene
	get_tree().change_scene_to_file("res://Level1Scene3.tscn")

func _on_level1_4_pressed():
	# Change to Level 1-4 scene
	get_tree().change_scene_to_file("res://Level1Scene4.tscn")

func _on_level1_5_pressed():
	# Change to Level 1-5 scene
	get_tree().change_scene_to_file("res://Level1Scene5.tscn")

func _on_level2_1_pressed():
	# Change to Level 2-1 scene
	get_tree().change_scene_to_file("res://Level2Scene1.tscn")

func _on_level2_2_pressed():
	# Change to Level 2-2 scene
	get_tree().change_scene_to_file("res://Level2Scene2.tscn")

func _on_level2_3_pressed():
	# Change to Level 2-3 scene
	get_tree().change_scene_to_file("res://Level2Scene3.tscn")

func _on_level2_4_pressed():
	# Change to Level 2-4 scene
	get_tree().change_scene_to_file("res://Level2Scene4.tscn")

func _on_level2_5_pressed():
	# Change to Level 2-5 scene
	get_tree().change_scene_to_file("res://Level2Scene5.tscn")

func _on_level3_1_pressed():
	# Change to Level 3-1 scene
	get_tree().change_scene_to_file("res://Level3Scene1.tscn")

func _on_level3_2_pressed():
	# Change to Level 3-2 scene
	get_tree().change_scene_to_file("res://Level3Scene2.tscn")

func _on_level3_3_pressed():
	# Change to Level 3-3 scene
	get_tree().change_scene_to_file("res://Level3Scene3.tscn")

func _on_level3_4_pressed():
	# Change to Level 3-4 scene
	get_tree().change_scene_to_file("res://Level3Scene4.tscn")

func _on_level3_5_pressed():
	# Change to Level 3-5 scene
	get_tree().change_scene_to_file("res://Level3Scene5.tscn")

func _on_level4_1_pressed():
	# Change to Level 4-1 scene
	get_tree().change_scene_to_file("res://Level4Scene1.tscn")

func _on_level4_2_pressed():
	# Change to Level 4-2 scene
	get_tree().change_scene_to_file("res://Level4Scene2.tscn")

func _on_level4_3_pressed():
	# Change to Level 4-3 scene
	get_tree().change_scene_to_file("res://Level4Scene3.tscn")

func _on_level4_4_pressed():
	# Change to Level 4-4 scene
	get_tree().change_scene_to_file("res://Level4Scene4.tscn")

func _on_level4_5_pressed():
	# Change to Level 4-5 scene
	get_tree().change_scene_to_file("res://Level4Scene5.tscn")

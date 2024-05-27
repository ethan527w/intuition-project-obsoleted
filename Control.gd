extends Control

func _ready():
	var callable_for_daily_tasks = Callable(self, "_on_DailyTasksButton_pressed")
	var callable_for_level_choice = Callable(self, "_on_LevelChoiceButton_pressed")
	
	$DailyTasksButton.connect("pressed", callable_for_daily_tasks)
	$LevelChoiceButton.connect("pressed", callable_for_level_choice)

func _on_DailyTasksButton_pressed():
	print("Daily Tasks button pressed")
	get_tree().change_scene_to_file("res://DailyTasksScene.tscn")


func _on_LevelChoiceButton_pressed():
	print("Level Choice button pressed")
	get_tree().change_scene_to_file("res://LevelChoiceScene.tscn")


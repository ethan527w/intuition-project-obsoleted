extends Control

var level_container: VBoxContainer

func _ready():
	# Create chapter buttons dynamically
	create_chapter_buttons(5)  # Assuming 5 chapters for the example

func create_chapter_buttons(num_chapters: int) -> void:
	for i in range(num_chapters):
		var button: Button = Button.new()
		button.text = "Chapter " + str(i + 1)
		var callable = Callable("_on_chapter_pressed", self , [i + 1])
		button.connect("pressed", callable)
		$VBoxContainer.add_child(button)

func _on_chapter_pressed(chapter_number: int) -> void:
	clear_level_buttons()
	display_level_buttons(chapter_number)

func display_level_buttons(chapter_number: int) -> void:
	level_container = VBoxContainer.new()
	add_child(level_container)
	# Assume each chapter has 10 levels, modify as necessary
	for i in range(10):
		var level_button: Button = Button.new()
		level_button.text = "Level " + str(i + 1) + " of Chapter " + str(chapter_number)
		var callable = Callable(self, "_on_level_pressed", [chapter_number, i + 1])
		level_button.connect("pressed", callable)
		level_container.add_child(level_button)

func clear_level_buttons() -> void:
	if level_container and level_container.is_inside_tree():
		level_container.queue_free()  # Remove old level buttons
		level_container = null

func _on_level_pressed(chapter_number: int, level_number: int) -> void:
	print("Chapter: " + str(chapter_number) + ", Level: " + str(level_number))
	# Add your logic to load the level or perform other actions

@tool
extends Node

var screenshot_folder: String = "screenshots/"

func _ready() -> void:
	var actions = InputMap.get_actions()
	if not &"screenshot" in actions:
		InputMap.add_action(&"screenshot")
		var key: InputEventKey = InputEventKey.new()
		key.keycode = KEY_F4
		InputMap.action_add_event("screenshot",  key)


func _input(event: InputEvent) -> void:
	if Engine.is_editor_hint() or not OS.is_debug_build(): return
	
	var folder_full_path: String = ProjectSettings.globalize_path("res://") + screenshot_folder
	
	if not DirAccess.dir_exists_absolute(folder_full_path):
		DirAccess.make_dir_absolute(folder_full_path)
	
	if event.is_action_pressed("screenshot"):
		var img: Image = get_viewport().get_texture().get_image()
		img.save_png(folder_full_path + Time.get_datetime_string_from_system() + ".png")
		print("Screenshot captured")

@tool
extends EditorPlugin

const AUTOLOAD_NAME = "Screenshot"


func _enter_tree() -> void:
	pass


func _exit_tree() -> void:
	pass


func _enable_plugin():
	add_autoload_singleton(AUTOLOAD_NAME, "res://addons/screenshot/screenshot_autoload.gd")


func _disable_plugin():
	remove_autoload_singleton(AUTOLOAD_NAME)

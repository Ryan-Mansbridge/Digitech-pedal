extends Node

func _on_continue_pressed():
	get_tree().change_scene_to_file('res://main_menu.tscn')

func _on_quit_pressed():
	get_tree().quit()

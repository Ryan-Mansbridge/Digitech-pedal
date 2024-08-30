extends Node

var my_scene = preload("res://test_scene.tscn")

func _on_button_5_pressed():
	var master_bus_index = AudioServer.get_bus_index("Master")
	AudioServer.set_bus_mute(master_bus_index, !AudioServer.is_bus_mute(master_bus_index))

func _on_button_2_pressed():
	get_tree().change_scene_to_file("res://test_scene.tscn")
	
func _on_button_4_pressed():
	get_tree().quit()

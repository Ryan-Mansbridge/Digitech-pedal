extends Node

var my_scene = preload("res://test_scene.tscn")
#REDUCES LOADING TIME BY PRELOADING SCENE

func _on_button_5_pressed():
	var master_bus_index = AudioServer.get_bus_index("Master")
	AudioServer.set_bus_mute(master_bus_index, !AudioServer.is_bus_mute(master_bus_index))
	#WHEN MUTE BUTTON IS PRESSED IT MUTES ALL AUDIO

func _on_button_2_pressed():
	get_tree().change_scene_to_file("res://test_scene.tscn")
	#WHEN BUTTON IS PRESSED IT CHANGES TOO THE 4 PLAYER LEVEL

func _on_button_pressed():
	get_tree().change_scene_to_file("res://2player.tscn")
	#WHEN BUTTON IS PRESSED IT CHANGES TOO THE 2 PLAYER LEVEL
	
func _on_button_4_pressed():
	get_tree().quit()
	#QUITS GAME WHEN BUTTON IS PRESSED

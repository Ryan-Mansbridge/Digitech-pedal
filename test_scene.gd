extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#unc _process(delta):

	#pass


func _on_button_pressed():
	$CanvasLayer.hide()
	$CanvasLayer/AudioStreamPlayer.stop()
	$game/AudioStreamPlayer.play()
	pass # Replace with function body.


func _on_button_3_pressed():
	
	pass # Replace with function body.


func _on_button_button_down():
	pass # Replace with function body.

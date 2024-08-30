extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready():
	get_tree().paused = true
	$Countdown/Countdown1.hide()
	$Countdown/Countdown2.hide()
	$Countdown/Countdown3.hide()
	$Countdown/Countdown4.hide()
	$Countdown/Countdown5.hide()
	$MiniMap.hide()
	
	$Countdown/Countdown5.show()
	await get_tree().create_timer(0.8).timeout
	$Countdown/Countdown5.hide()
	
	$Countdown/Countdown4.show()
	await get_tree().create_timer(0.8).timeout
	$Countdown/Countdown4.hide()
	
	$Countdown/Countdown3.show()
	await get_tree().create_timer(0.8).timeout
	$Countdown/Countdown3.hide()
	
	$Countdown/Countdown2.show()
	await get_tree().create_timer(0.8).timeout
	$Countdown/Countdown2.hide()
	
	$Countdown/Countdown1.show()
	await get_tree().create_timer(0.8).timeout
	$Countdown/Countdown1.hide()
	
	$MiniMap.show()
	get_tree().paused = false
	
	pass # Replace with function body.



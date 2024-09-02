extends Node3D

var total_time_in_secs : int = 0 
# Called when the node enters the scene tree for the first time.
func _ready():
	get_tree().paused = true
	#PAUSES THE GAME TO STOP CARS FROM MOVING
	$Countdown/Countdown1.hide()
	$Countdown/Countdown2.hide()
	$Countdown/Countdown3.hide()
	$Countdown/Countdown4.hide()
	$Countdown/Countdown5.hide()
	$MiniMap.hide()
	#HIDES COUNTDOWN UNTIL THEY ARE NEXT CALLED ON
	#ALSO HIDES MINI-MAP WHICH WOULD GET IN THE WAY OF COUNTDOWN
	
	$Countdown/Countdown5.show()
	await get_tree().create_timer(1).timeout
	$Countdown/Countdown5.hide()
	#SHOWS NUMBER, WAITS, THAN HIDES NUMBER TO SHOW THE NEXT ONE
	
	$Countdown/Countdown4.show()
	await get_tree().create_timer(1.1).timeout
	$Countdown/Countdown4.hide()
	#SHOWS NUMBER, WAITS, THAN HIDES NUMBER TO SHOW THE NEXT ONE
	
	$Countdown/Countdown3.show()
	await get_tree().create_timer(1.1).timeout
	$Countdown/Countdown3.hide()
	#SHOWS NUMBER, WAITS, THAN HIDES NUMBER TO SHOW THE NEXT ONE
	
	$Countdown/Countdown2.show()
	await get_tree().create_timer(1.1).timeout 
	$Countdown/Countdown2.hide()
	#SHOWS NUMBER, WAITS, THAN HIDES NUMBER TO SHOW THE NEXT ONE
	
	$Countdown/Countdown1.show()
	await get_tree().create_timer(1).timeout
	$Countdown/Countdown1.hide()
	#SHOWS NUMBER, WAITS, THAN HIDES NUMBER TO SHOW THE NEXT ONE
	
	$MiniMap.show()
	$Controls.hide()
	get_tree().paused = false
	#UNPAUSES THE GAME FILE
	#HIDES THE CONTROLS, AND SHOWS THE MINIMAP AGAIN
	
	pass # Replace with function body.

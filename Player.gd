extends Node


func _on_Monteri_query_driver(driver):
	driver.start_query()
	if Input.is_action_pressed("pad_brake"):
		driver.brake()
	else:
		if Input.is_action_pressed("pad_accelerate"):
			driver.accelerate()
		if Input.is_action_pressed("pad_left"):
			driver.turn_left()
		if Input.is_action_pressed("pad_right"):
			driver.turn_right()
		if Input.is_action_pressed("pad_reverse"):
			driver.reverse()

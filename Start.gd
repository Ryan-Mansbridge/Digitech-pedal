extends Node

onready var fps_label = get_node("Status/FPS")
onready var debug_label = get_node("Status/Debug")
onready var car = get_node("Monteri")


func _process(_delta):
	if Input.is_action_just_released("ui_cancel"):
		get_tree().quit()
	var fps = Performance.get_monitor(Performance.TIME_FPS)
	var speed: float = car.linear_velocity.length()
	var acceleration: float = car.acceleration_measurement
	var force: float = car.acceleration_force
	var velocity_sideways: float = car.vehicle_state.velocity_sideways
	var velocity_rear_axis: float = car.vehicle_state.velocity_rear_axis
	var grip: bool = car.has_grip
	var grip_force: float = car.grip_force
	var omega_reference = car.omega_reference
	var omega_measurement = car.angular_velocity.y
	var drift_angle = car.vehicle_state.drift_angle_measurement
	var countersteering = car.driver.did_counter_steer
	var cornering = car.is_cornering
	var cornering_left = car.is_cornering_left
	var cornering_right = car.is_cornering_right
	var format = "FPS: %2.0f"
	fps_label.text = format % fps
	format = "Speed: %.0f m/s (Acceleration: %.1f)\n"
	format += "Force: %.1f\n"
	format += "Velocity Sideways: %.0f m/s\n"
	format += "Velocity Rear: %.0f m/s\n\n"
	format += "Grip: %s\n"
	format += "Grip Force: %.1f N\n\n"
	format += "Omega: %.1f (ref: %.1f)\n"
	format += "Drift-Angle: %3.0f\n\n"
	format += "Countersteering: %s\n"
	format += "Cornering: %s\n"
	format += "Left: %s\nRight: %s\n"
	debug_label.text = format % [speed, acceleration, force, velocity_sideways, velocity_rear_axis, grip, grip_force, omega_measurement, omega_reference, rad2deg(drift_angle), countersteering, cornering, cornering_left, cornering_right]

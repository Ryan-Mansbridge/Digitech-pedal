extends VehicleBody3D

const MAX_STEER = 0.8
const ENGINE_POWER = 300

@onready var camera_pivot = $CameraPivot
@onready var camera_3d = $CameraPivot/Camera3D
@onready var reverse_camera = $CameraPivot/ReverseCamera

var look_at
var lapcar1 = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	look_at = global_position

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	steering = move_toward(steering, Input.get_axis('p1move_right_2', 'p1move_left_2') * MAX_STEER, delta * 2.5)
	#INPUTS EFFECT TURNING OF THE CAR
	engine_force = Input.get_axis('p1move_back_2', 'p1move_forward_2') * ENGINE_POWER
	#INPUTS EFFECT THE FOWARD AND BACK OF THE CAR
	camera_pivot.global_position = camera_pivot.global_position.lerp(global_position, delta * 20.0)
	camera_pivot.transform = camera_pivot.transform.interpolate_with(transform, delta * 5.0)
	look_at = look_at.lerp(global_position + linear_velocity, delta * 5.0)
	#CAMERA FOLLOWS THE CAR
	camera_3d.look_at(look_at)
	reverse_camera.look_at(look_at)
	_check_camera_switch()
	#IF CAR MOVES BACKWARDS THE CAMERA SWITCHES TO THE REVERSE CAMERA

func _check_camera_switch():
	if linear_velocity.dot(transform.basis.z) > -0.5:
		camera_3d.current = true
	else:
		reverse_camera.current = true
	#CHECKS IF THE CAR IS MOVING IN REVERSE

func _on_car_1_lapcounter_area_entered(area):
	get_tree().change_scene_to_file('res://Bluewin.tscn')
	#WHEN THE CAR AREA ENTERS THE END SCREEN, THE AREA CHANGES TOO THE PERSONALIZED WIN SCREEN

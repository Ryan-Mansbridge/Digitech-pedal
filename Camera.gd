extends Camera

export var target_node: NodePath
export var vehicle_controller_node: NodePath
export var fixed_angle: bool = true

var target: Spatial
var vehicle_controller: Spatial
var distance_measured: Vector3
var distance_magnitude: float

func _ready():
	target = get_node(target_node)
	vehicle_controller = get_node(vehicle_controller_node)
	vehicle_controller.visible = fixed_angle
	distance_measured = target.global_transform.origin - global_transform.origin
	distance_magnitude = distance_measured.length()

func _physics_process(_delta: float):
	if fixed_angle:
		follow()
	else:
		view_from_inside()

func view_from_inside():
	var rotation = Quat(target.global_transform.basis)
	var euler: Vector3 = rotation.get_euler()
	euler.z = 0
	rotation = Quat(euler)
	transform.basis = Basis(rotation)
	transform.origin = target.global_transform.origin

func follow():
	var rotation = Quat(transform.basis)
	transform.origin = target.global_transform.origin - rotation * Vector3.FORWARD * distance_magnitude

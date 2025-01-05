extends Node3D

@onready var camera_pivot: Node3D = $spaceship_interior_2/CameraPivot
@onready var spaceship_camera: Camera3D = $spaceship_interior_2/CameraPivot/SpaceshipCamera

var relative_mouse_position : Vector2
var sensitivity := 0.75

var camera_rotation;

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	camera_rotation = spaceship_camera.global_rotation
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	# Rotating camera
	camera_pivot.rotation.y += relative_mouse_position.x * sensitivity * delta
	spaceship_camera.rotation.x += relative_mouse_position.y * sensitivity * delta
	
	spaceship_camera.rotation.x = clamp(spaceship_camera.rotation.x, deg_to_rad(-90), deg_to_rad(90))
	camera_pivot.rotation.y = clamp(camera_pivot.rotation.y, deg_to_rad(-90), deg_to_rad(90))
	
	relative_mouse_position = Vector2(0, 0)
	
	camera_rotation = spaceship_camera.global_rotation
	
	pass

func _input(event):
	if event is InputEventMouseMotion:
		relative_mouse_position = -event.relative
		#camera_pivot.rotation.y += event.relative.x

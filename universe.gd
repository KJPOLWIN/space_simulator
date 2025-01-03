extends Node3D


@onready var planets_camera: Camera3D = $Camera3D/SubViewportContainer/SubViewport2/PlanetsCamera
@onready var sky_camera: Camera3D = $Camera3D/SubViewportContainer/SubViewport/SkyCamera
@onready var planet: Node3D = $Camera3D/SubViewportContainer/SubViewport2/Planet
@onready var star: Node3D = $Camera3D/SubViewportContainer/SubViewport2/Star
@onready var fake_sun: Node3D = $Camera3D/SubViewportContainer/SubViewport/SkyCamera/FakeSunPivot/FakeSun
@onready var fake_sun_pivot: Node3D = $Camera3D/SubViewportContainer/SubViewport/SkyCamera/FakeSunPivot


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#camera_3d.look_at(star.position)
	fake_sun.look_at(sky_camera.position)
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	fake_sun_pivot.look_at(star.position)
	fake_sun.recalculate_size(planets_camera.position.distance_to(star.position))
	
	sky_camera.rotation = planets_camera.rotation
	sky_camera.position = planets_camera.position
	
	#planets_camera.position.x -= 10000.0 * delta
	#planets_camera.look_at(star.position)
	#print(camera_3d.position.x)
	pass

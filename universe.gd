extends Node3D


@onready var planets_camera: Camera3D = $Camera3D/SubViewportContainer/SubViewport2/Planet/OrbitPivot/PlanetsCamera
@onready var sky_camera: Camera3D = $Camera3D/SubViewportContainer/SubViewport/SkyCamera
@onready var planet: Node3D = $Camera3D/SubViewportContainer/SubViewport2/Planet
@onready var star: Node3D = $Camera3D/SubViewportContainer/SubViewport2/Star
@onready var fake_sun: Node3D = $Camera3D/SubViewportContainer/SubViewport/SkyCamera/FakeSunPivot/FakeSun
@onready var fake_sun_pivot: Node3D = $Camera3D/SubViewportContainer/SubViewport/SkyCamera/FakeSunPivot
@onready var directional_light_3d: DirectionalLight3D = $Camera3D/SubViewportContainer/SubViewport/SkyCamera/FakeSunPivot/DirectionalLight3D

#@onready var spaceship_interior: Node3D = $Camera3D/SubViewportContainer/SubViewport3/spaceship_interior_2
#@onready var spaceship_camera: Camera3D = $Camera3D/SubViewportContainer/SubViewport3/SpaceshipInterior/SpaceshipCamera
@onready var spaceship: Node3D = $Camera3D/SubViewportContainer/SubViewport3/Spaceship

@onready var orbit_pivot: Node3D = $Camera3D/SubViewportContainer/SubViewport2/Planet/OrbitPivot


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#camera_3d.look_at(star.position)
	fake_sun.look_at(sky_camera.position)
	directional_light_3d.look_at(sky_camera.position)
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	orbit_pivot.rotation_degrees.y += 10.0 * delta
	
	fake_sun_pivot.look_at(-planets_camera.global_position)
	fake_sun.recalculate_size(planets_camera.global_position.distance_to(star.position))
	
	directional_light_3d.look_at(-planets_camera.global_position)
	
	#spaceship.look_at(planet.global_position - planets_camera.global_position)
	
	spaceship.rotation_degrees.z = -90
	spaceship.rotation_degrees.x = 180
	
	planets_camera.rotation = spaceship.camera_rotation
	sky_camera.rotation = planets_camera.rotation
	
	#sky_camera.global_position = planets_camera.global_position
	#fake_sun_pivot.global_position = sky_camera.global_position
	#fake_sun.look_at(sky_camera.global_position)
	
	
	#spaceship.rotation = planets_camera.global_rotation
	#spaceship_camera.rotation = sky_camera.global_rotation
	
	#print(fake_sun.mesh_instance_3d.mesh.top_radius)
	#print(fake_sun.rotation)
	
	#planets_camera.position.x -= 10000.0 * delta
	#planets_camera.look_at(planet.global_position)
	#print(camera_3d.position.x)
	pass

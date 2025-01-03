extends Node3D

@onready var mesh_instance_3d: MeshInstance3D = $MeshInstance3D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func recalculate_size(distance : float):
	# calculate sun angular size
	# calculate disk size at 5m from angular size
	# set mesh radius to disk size
	
	var angular_size = 2 * atan(695.7 / (2 * distance)) #Size of the star and distance to it
	var fake_sun_size = abs(2 * 5.0 * tan(angular_size / 2))
	
	mesh_instance_3d.mesh.top_radius = fake_sun_size
	mesh_instance_3d.mesh.bottom_radius = fake_sun_size
	
	if distance < 10000:
		hide()
	else:
		show()
	
	pass

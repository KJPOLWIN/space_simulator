extends Node3D

@export var radius := 10.0

@onready var mesh_instance_3d: MeshInstance3D = $MeshInstance3D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	mesh_instance_3d.mesh.radius = radius
	mesh_instance_3d.mesh.height = radius * 2.0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

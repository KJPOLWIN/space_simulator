extends Node3D


@onready var camera_3d: Camera3D = $Camera3D
@onready var planet: Node3D = $Planet


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	camera_3d.look_at(planet.position)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

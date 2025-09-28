extends Node3D

@onready var node_3d: Node3D = $"."


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	node_3d.visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Global.sanity >= 360:
		node_3d.visible = true

extends Area3D

@onready var area_3d: Area3D = $"."
@onready var label: Label = $"../SubViewport/Label"

var playerInBody = false

func _on_body_entered(_body):
	$"../SubViewport/Label".text = "press E to EXIT"   # show the label
	playerInBody = true

func _on_body_exited(_body):
	$"../SubViewport/Label".text = " "  # hide the label
	playerInBody = false
	
func _process(delta: float) -> void:
	if playerInBody and Input.is_action_just_pressed("interact"):
		print("ohio")

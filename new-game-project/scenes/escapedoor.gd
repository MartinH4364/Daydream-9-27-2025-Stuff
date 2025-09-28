var player_in_range = false
@onready var interact_label: Label = %spedmonkey


func _on_body_entered(body):
	if body.name == "ProtoController":
		player_in_range = true
		interact_label.text = "press E to ESCAPE"   # show the label

func _on_body_exited(body):
	if body.name == "ProtoController":
		player_in_range = false
		interact_label.text = " "  # hide the label

func _process(delta: float) -> void:
	if player_in_range and Input.is_action_just_pressed("interact"):
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)

extends Area3D

var player_in_range = false

func _on_body_entered(body):
	if body.name == "ProtoController":
		player_in_range = true
		$"../Sketchfab_Scene/SubViewport/InteractLabel".text = "press E to play"   # show the label

func _on_body_exited(body):
	if body.name == "ProtoController":
		player_in_range = false
		$"../Sketchfab_Scene/SubViewport/InteractLabel".text = " "  # hide the label

func _process(delta: float) -> void:
	if player_in_range and Input.is_action_just_pressed("interact"):
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
		get_tree().change_scene_to_file("res://scenes/game.tscn")

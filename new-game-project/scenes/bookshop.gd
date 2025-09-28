extends Area3D

var player_in_range = false

func _on_body_entered(body):
	if body.name == "ProtoController":
		player_in_range = true
		$"../Sketchfab_Scene/SubViewport/Label".text = "press E to open store"   # show the label

func _on_body_exited(body):
	if body.name == "ProtoController":
		player_in_range = false
		$"../Sketchfab_Scene/SubViewport/Label".text = " "  # hide the label
		
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("interact") and player_in_range:
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
		get_tree().change_scene_to_file("res://scenes/Shop.tscn")

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

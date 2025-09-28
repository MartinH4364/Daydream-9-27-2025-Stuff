extends Area3D


func _on_body_entered(_body):
	$"../SubViewport/Label".text = "press E to ESCAPE"   # show the label

func _on_body_exited(_body):
	$"../SubViewport/Label".text = " "  # hide the label

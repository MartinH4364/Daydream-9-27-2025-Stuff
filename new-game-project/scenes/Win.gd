extends Button

func _on_pressed() -> void:
	if Global.tickets >= 1000:
		Global.tickets -= 1000
		get_tree().change_scene_to_file()

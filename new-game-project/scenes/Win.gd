extends Button

func _on_pressed() -> void:
	if Global.tickets >= 500:
		Global.tickets -= 500
		get_tree().change_scene_to_file("res://scenes/youwin.tscn")

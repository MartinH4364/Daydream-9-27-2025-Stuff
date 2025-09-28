extends Button

func _on_pressed() -> void:
	if Global.tickets >= 30:
		Global.tickets -= 30
		Global.sanity += 50

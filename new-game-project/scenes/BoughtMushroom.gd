extends Button

func _on_pressed() -> void:
	if Global.tickets >= 40:
		Global.tickets -= 40
		Global.mushroomAmount += 1

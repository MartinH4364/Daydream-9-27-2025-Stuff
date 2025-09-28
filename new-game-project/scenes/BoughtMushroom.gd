extends Button

func _on_pressed() -> void:
	if Global.tickets >= 50:
		Global.tickets -= 50
		Global.mushroomAmount += 1

extends Button

func _on_pressed() -> void:
	if Global.tickets >= 20:
		Global.tickets -= 20
		Global.coffeeAmount += 1

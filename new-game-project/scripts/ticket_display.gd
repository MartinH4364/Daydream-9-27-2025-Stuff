extends Label

@onready var ticket_display: Label = $"."

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	ticket_display.text = "Tickets: " + Global.tickets

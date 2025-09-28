extends Node

@onready var ticket_display: Label = $"../TicketDisplay"

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	ticket_display.text = "Tickets: " + str(Global.tickets)

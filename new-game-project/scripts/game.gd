extends Node

var score = 0

@onready var label: Label = $"../Player/Camera2D/Label"

func add_point():
		score += 1
		label.text = str(score)

extends Node

var tickets = 0
var timerTime = 40

var maxSanity = 360
var sanity = 180
var sanityLoss = 0.1
var FogAdd = 0.7

func _process(delta: float) -> void:
	if sanity < 0:
		get_tree().change_scene_to_file("res://scenes/Youlose.tscn")

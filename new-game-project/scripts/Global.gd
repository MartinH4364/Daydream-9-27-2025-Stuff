extends Node

var tickets = 0
var timerTime = 40

var maxSanity = 360
var sanity = 400
var sanityLoss = 1
var FogAdd = 0.7
var coffeeAmount = 4
var mushroomAmount = 0
var coinMultiplier = 1

func _process(delta: float) -> void:
	if sanity < 0:
		get_tree().change_scene_to_file("res://scenes/Youlose.tscn")
	FogAdd = 0.7+coffeeAmount * 0.025
	timerTime = 40+20*coffeeAmount
	coinMultiplier = 1+mushroomAmount
	sanityLoss = 1 - 0.05*mushroomAmount
	

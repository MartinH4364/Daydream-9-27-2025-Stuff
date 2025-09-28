extends Node

var score = 0

var startTimer = Global.timerTime

@onready var label: Label = $"../Player/Camera2D/Label"
@onready var timer: Timer = $Timer
@onready var timer_label: Label = $"../Player/Camera2D/TimerLabel"
@onready var game_manager: Node = $"."
@onready var sanity_timer: Timer = $SanityTimer
@onready var sanity_bar: ProgressBar = $"../Player/Camera2D/SanityBar"

func _ready() -> void:
	timer.wait_time = startTimer
	timer.start()
	sanity_timer.start()
	
func _process(delta: float) -> void:
	timer_label.text = "Time: " + str(round(timer.time_left * 100)/100)
	sanity_timer.wait_time = Global.sanityLoss
	sanity_bar.value = Global.sanity

func add_point():
		score += 1 * Global.coinMultiplier
		label.text = str(score)
		
func _on_timer_timeout() -> void:
	Global.tickets += round(game_manager.score)
	get_tree().change_scene_to_file("res://scenes/main.tscn")
	
func _on_sanity_timer_timeout() -> void:
	Global.sanity -= 1
	sanity_timer.start()
	print(Global.sanity)

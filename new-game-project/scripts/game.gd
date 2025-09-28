extends Node

var score = 0

var startTimer = Global.timerTime

@onready var label: Label = $"../Player/Camera2D/Label"
@onready var timer: Timer = $Timer
@onready var timer_label: Label = $"../Player/Camera2D/TimerLabel"
@onready var game_manager: Node = %GameManager

func _ready() -> void:
	timer.wait_time = startTimer
	timer.start()
	
func _process(delta: float) -> void:
	timer_label.text = "Time: " + str(round(timer.time_left * 100)/100)

func add_point():
		score += 1
		label.text = str(score)
		
func _on_timer_timeout() -> void:
	Global.tickets += game_manager.score
	get_tree().change_scene_to_file("res://scenes/main.tscn")

extends Area3D

@onready var area_3d: Area3D = $"."
@onready var label: Label = $"../SubViewport/Label"
@onready var timer: Timer = $Timer

var playerInBody = false
var timerout = false

func _process(delta: float) -> void:
	if playerInBody and Input.is_action_just_pressed("interact") and Global.sanity >= 1000:
		get_tree().change_scene_to_file("res://scenes/Secret.tscn")

func _on_body_entered(body: Node3D) -> void:
	if timerout:
		label.text = "press E to EXIT"
		print("entered")   # show the label
		playerInBody = true

func _on_body_exited(body: Node3D) -> void:
	label.text = " "
	print("exited")
	playerInBody = false
	
func _ready() -> void:
	timer.start()
	


func _on_timer_timeout() -> void:
	timerout = true

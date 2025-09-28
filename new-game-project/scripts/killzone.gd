extends Area2D

@onready var timer: Timer = $Timer
@onready var game_manager: Node = %GameManager

func _on_body_entered(body: Node2D) -> void:
	Engine.time_scale = 0.5
	body.get_node("CollisionShape2D").queue_free()
	timer.start()
	
func _on_timer_timeout() -> void:
	Engine.time_scale = 1
	Global.tickets += game_manager.score
	get_tree().change_scene_to_file("res://scenes/main.tscn")

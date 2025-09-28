extends ProgressBar

@onready var sanity_bar: ProgressBar = $"."

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	sanity_bar.max_value = 360
	sanity_bar.value = Global.sanity


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

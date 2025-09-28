extends TextureRect

@onready var fog: TextureRect = $"."

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	fog.modulate.a = Global.FogAdd- Global.sanity/float(Global.maxSanity)

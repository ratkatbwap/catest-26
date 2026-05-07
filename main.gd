extends Node2D

var light_scene = preload("res://traffic_light.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var light = light_scene.instantiate()
	for i in range(8):
		var x = randf_range(0, get_viewport_rect().size.x)
		var y = randf_range(0, get_viewport_rect().size.y)
		light.position.x = x
		light.position.y = y
		
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

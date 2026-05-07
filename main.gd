extends Node2D

var light_scene = preload("res://traffic_light.tscn")

var green_count = 0
var amber_count = 0
var red_count = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for i in range(10):
		var light = light_scene.instantiate()
		var x = randf_range(0, get_viewport_rect().size.x)
		var y = randf_range(0, get_viewport_rect().size.y)
		light.position.x = x
		light.position.y = y
		
	if light.green:
		green_count += 1
	else:
		pass
		
	if light.amber:
		amber_count += 1
	else:
		pass
	
	if light.red:
		red_count += 1
	else:
		pass
		
func update_labels():
	$Label.text = "green: " + str(green_count)
	$Label2.text = "amber: " + str(amber_count)
	$Label3.text = "red: " + str(red_count)
		
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

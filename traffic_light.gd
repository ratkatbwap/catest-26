extends Node2D

var radius = 5
var green = Color.GREEN
var amber = Color.ORANGE
var red = Color.RED

func assign_color():
	## Assign the color GREEN to the material
	var m:StandardMaterial3D = $MeshInstance3D.get_active_material(0
	if randf() < 0.5:
		m.albedo_color = green
	else:
		m.albedo_color = red

func _ready() -> void:
	var m:StandardMaterial3D = StandardMaterial3D.new()
	$MeshInstance3D.set_surface_override_material(0, m)		
	assign_color()	
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _draw():
	draw_circle(Vector2(50, 50), radius, Color.GREEN, true)
	
	pass

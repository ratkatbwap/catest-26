extends Node2D

var radius = 5
@export var green = Color.GREEN
@export var amber = Color.ORANGE
@export var red = Color.RED

func assign_color():
	## Assign the color GREEN to the material
	var m:StandardMaterial3D = $MeshInstance3D.get_active_material(0)
	m.albedo_color = green

func _ready() -> void:
	var m:StandardMaterial3D = StandardMaterial3D.new()
	$MeshInstance3D.set_surface_override_material(0, m)		
	assign_color()	
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _draw():
	draw_circle(Vector2(50, 50), radius, Color.GREEN, true)
	
	pass

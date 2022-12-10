extends Spatial


var Number_Generator = RandomNumberGenerator.new()


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area_input_event(camera, event, position, normal, shape_idx):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and event.pressed == true:
			var this_child = get_child(0)
			print(this_child)
#			print("Pressed Left Mouse Button")
			randomize_color()
			
func randomize_color():
	Number_Generator.randomize()
	var new_red = Number_Generator.randf_range(0.0, 1.0)
	Number_Generator.randomize()
	var new_green = Number_Generator.randf_range(0.0, 1.0)
	Number_Generator.randomize()
	var new_blue = Number_Generator.randf_range(0.0, 1.0)
	var new_color = Vector3(new_red, new_green, new_blue).normalized()
	var this_material = get_child(0).get_surface_material(0)
#	this_material.albedo_color = Color(new_color.x, new_color.y, new_color.z, 1.0)
	print(new_color)
#	print(this_material)

extends CSGBox

var rotating = false

var prev_mouse_position
var next_mouse_position

func _process(delta):
	if (Input.is_action_just_pressed("Rotate")):
			rotating = true
			prev_mouse_position = get_viewport().get_mouse_position()
	if (Input.is_action_just_released("Rotate")):
			rotating = false
	
	if (rotating):
		next_mouse_position = get_viewport().get_mouse_position()
		rotate_y((next_mouse_position.x - prev_mouse_position.x) * .5 * delta)
		rotate_x((next_mouse_position.y - prev_mouse_position.y) * .5 * delta)
		prev_mouse_position = next_mouse_position

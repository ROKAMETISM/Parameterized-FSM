extends Node2D

var grip_position
var is_grip
var entered_mouse

func _process(delta: float) -> void:
	
	if entered_mouse and Input.is_action_pressed("ui_accept"):
		if is_grip == false:
			grip_position = get_global_mouse_position() - position
		is_grip = true
	elif not Input.is_action_pressed("ui_accept"):
		is_grip = false
	if is_grip:
		position = get_global_mouse_position() - grip_position

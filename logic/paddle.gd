extends Area2D

const MOVE_SPEED = 200

var _ball_dir
var _up
var _down
var input

onready var _screen_size_y = get_viewport_rect().size.y

func _ready():
	var n = name.to_lower()
	_up = n + "_move_up"
	_down = n + "_move_down"
	_ball_dir = 1 if n == "left" else -1


func _process(delta):
	# Move up and down based on input.
	input = Input.get_action_strength(_down) - Input.get_action_strength(_up)
	position.y = clamp(position.y + input * MOVE_SPEED * delta, 16, _screen_size_y - 16)


func _on_area_entered(area):
	if area.name != "Ball":
		return
	var normal =  Vector2(_ball_dir,0 )
	area.direction = area.direction - (2 * normal * area.direction)*normal
	var rot_inc = input
	if area.position.x > position.x:
		rot_inc *= -1
	area.rot_dir += rot_inc

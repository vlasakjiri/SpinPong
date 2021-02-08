extends Area2D

const DEFAULT_SPEED = 200
const spin_impact = 0.0004
const rotation_decay = 0.998

var direction = Vector2.LEFT

onready var _initial_pos = position
onready var _speed = DEFAULT_SPEED
var rot_dir = 0.0
var rot_speed = 10

	

func _physics_process(delta):
	_speed += delta * 2
	rot_dir *= rotation_decay
	direction=direction.rotated(rot_dir * rot_speed * spin_impact)
	
	position += _speed * delta * direction
	rotation += rot_dir * delta * rot_speed
		

func reset():
	direction = [Vector2.LEFT, Vector2.RIGHT][randi() % 2]
	$Circle.lineColor = Color(0,0,0)
	$Circle.update()
	rot_dir = 0.0
	rotation = 0.0
	position = _initial_pos
	_speed = DEFAULT_SPEED

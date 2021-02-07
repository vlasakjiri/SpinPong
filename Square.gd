extends Node2D

export var size = 16.0
export var color = Color(1,1,1)


func _ready():
	update()

func _draw():
	var rect = Rect2(-size/2, -size/2, size, size)
	draw_rect(rect, color)


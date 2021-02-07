extends Node2D

export var r = 8
export var color = Color(1,1,1)
export var lineColor = Color(0,0,0)


func _ready():
	update()

func _draw():
	draw_circle(Vector2(0,0), r, color)
	draw_arc(Vector2(0,0), r, PI, -PI, 100, lineColor, 1.5, false)
	draw_line(Vector2(-r,0), Vector2(r,0), lineColor, 1.5, false)
	

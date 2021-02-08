extends Area2D

export var _bounce_direction = 1

func _on_area_entered(area):
	if area.name == "Ball":
		$"../BongPlayer".play()
		var normal = Vector2(0, _bounce_direction)
#		area.direction = (area.direction + Vector2(0, _bounce_direction)).normalized()
		area.direction = area.direction - (2 * normal * area.direction)*normal

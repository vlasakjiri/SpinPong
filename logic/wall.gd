extends Area2D

signal out_of_bounds
export (bool) var left

func _on_wall_area_entered(area):
	if area.name == "Ball":
		$"../ScorePlayer".play()
		area.reset()
		emit_signal("out_of_bounds")

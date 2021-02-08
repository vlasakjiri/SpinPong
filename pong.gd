extends Node2D



# Called when the node enters the scene tree for the first time.
func _ready():
	$Left.processInput = false
	$Right.processInput = false



func _on_RightWall_out_of_bounds():
	$HUD.inc_P1()



func _on_LeftWall_out_of_bounds():
	$HUD.inc_P2()




func _on_HUD_onePlayer():
	$Left.processInput = true
	$Right.processInput = false
	var AI = preload("res://AI.gd")
	$Right.AI = AI.new($Ball, $Right)
	$Right.useAi = true
	
	

func _on_HUD_twoPlayers():
	$Left.processInput = true
	$Right.processInput = true


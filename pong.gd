extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$Left.processInput = false
	$Right.processInput = false




func _on_HUD_start_game():
	$Left.processInput = true
	$Right.processInput = true


func _on_RightWall_out_of_bounds():
	$HUD.inc_P1()



func _on_LeftWall_out_of_bounds():
	$HUD.inc_P2()


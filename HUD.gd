extends CanvasLayer

signal onePlayer
signal twoPlayers

var leftScore = 0
var rightScore = 0



# Called when the node enters the scene tree for the first time.
func _ready():
	$Score.visible = false	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func inc_P1():
	leftScore+=1
	updateScore()
	

func inc_P2():
	rightScore+=1
	updateScore()
	
func updateScore():
	$Score.text = str(leftScore) + ":" + str(rightScore)

func _on_Button_pressed():
	$Score.visible = true
	$Title.visible = false
	$OnePlayerButton.visible = false
	$TwoPlayersButton.visible = false
	

func _on_OnePlayerButton_pressed():
	emit_signal("onePlayer")


func _on_TwoPlayersButton_pressed():
	emit_signal("twoPlayers")

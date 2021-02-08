extends Node

const threshold = 20
const speed = .7


var ball_node
var paddle_node

func getMove():
	if ball_node.position.y > paddle_node.position.y + threshold:
		return 1 * speed
	elif ball_node.position.y < paddle_node.position.y - threshold:
		return -1 * speed
	else:
		return 0

func _init(ball, paddle):
	ball_node=ball
	paddle_node=paddle

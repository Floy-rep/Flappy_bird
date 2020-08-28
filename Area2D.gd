extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass




func _on_Area2D_body_entered(body):
	if body.get_name() == "bird":
		get_tree().change_scene("res://game.tscn")
		global.score = 0
		global.snoop = false
		global.pressed = false
		global.block = false
		global.snoop_speed = 0
		global.rot = false
		music.get_node("AudioStreamPlayer").play()
		get_node("../../../CanvasModulate").color = Color(1,1,1,1)


func _on_coin_body_entered(body):
	if body.get_name() == "bird":
		global.score += 0.5
		if global.score > global.score_1:
			global.score_1 += 0.5

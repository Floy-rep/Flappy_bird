extends Node2D


# Declare member variables here. Examples:
var c = 2
var b = 0


func _process(delta):
	if c <= 255:
		b += 4
		c += 1
	if c > 255 and c <= 510:
		c += 1
		b -= 4
	if c > 510:
		c = 0 
		
	$".".modulate = Color8(b,255,255,255)
	$Sprite.rotation += 0.1

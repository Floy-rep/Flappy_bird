extends Node2D

var r = 50
var g = 110
var b = 50
var c = 0
var c1 = 0
var c2 = 0

func _ready():
	$CanvasLayer/text.text = String(global.score_1) 

func _process(delta):
	if global.snoop :
		
		if c <= 150:				#hard 1
			r += 6
			c += 2
		if c > 150 and c <= 300:
			r -= 6
			c += 2
		if c > 300:
			c = 0 


		if c1 <= 100:
			g += 1
			c1 += 2
		if c1 > 100 and c1 <= 250:
			g += 4
			c1 += 2
		if c1 > 250:
			c1 = 0 
			g = 0

		if c2 <= 150:
			b += 2
			c2 += 2
		if c2 > 150 and c2 <= 250:
			b-= 2
			c2 += 2
		if c2 > 250:
			c2 = 0 



#		if c <= 255:
#			g += 5
#			b += 3
#			r += 1
#			c += 10
#		if c > 255 and c <= 510:
#			c += 10
#			r -= 1
#			b -= 3
#			g -= 5
#		if c > 510:
#			c = 0 
		

#		$CanvasModulate.color = Color8(g + 100 , 0 ,b - 150,255)
		$CanvasModulate.color = Color8(g, b, 255 ,255)

func _on_AnimatedSprite_animation_finished():
	if global.snoop == true and global.block == false:
		$snoop.playing = true
		music.get_node("AudioStreamPlayer").stop()
		global.block = true
	$CanvasLayer/Label.text = String(global.score)

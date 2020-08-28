extends Area2D


var a = 0
var b = 0
var c = 0
var g = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	if c <= 255:
		b += 2
		g += 1
		c += 1
	if c > 255 and c <= 510:
		g -= 1
		b -= 2
		c += 1
	if c > 510:
		c = 0 
		
	$".".modulate = Color8(b, g,255,255)
	$Sprite.rotation += 0.05
	
	if a <= 20 :
		a += 1
		$".".position.y += 2
	if a > 20 and a <= 40 :
		a += 1
		$".".position.y -= 2
	if a > 40:
		a = 0


func _on_timer_animation_finished():
	pass


func _on_doritos_body_entered(body):
	$".".visible = false
	$lol.play()
	global.snoop = true

extends KinematicBody2D


var velocity = Vector2()
var speed = 100

var limit_x = 0


func _process(delta):
	if global.snoop:
		if global.rot:
			$".".rotation += 0.1
		
		$Camera2D.zoom = Vector2(0.8,0.8)
	
	if global.pressed == true:
		if global.snoop == true:
			$AnimatedSprite.speed_scale = 3
			limit_x = 250
		if velocity.y <= 300:
			pass
			velocity.y += speed 
		velocity.x = 250 + limit_x + global.snoop_speed
		move_and_slide(velocity)


func _on_TouchScreenButton_pressed():
	global.pressed = true
	$flip.play()
	velocity.y = -900

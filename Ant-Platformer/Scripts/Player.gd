extends KinematicBody2D

export var speed = 10.0
export var gravity = 20
export var jump_height = 200
export var lerp_speed = 0.1

var motion = Vector2()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	
	_handle_animation()
	_handle_input()

	motion.y += gravity
	motion = move_and_slide(motion, Vector2.UP)

func _handle_animation():
	if abs(motion.x) > 10:
		$AnimatedSprite.play("move")
	else:
		$AnimatedSprite.play("idle")

func _handle_input():
	if Input.is_action_pressed("move_right"):
		motion.x = speed
		$AnimatedSprite.flip_h = false
	elif Input.is_action_pressed("move_left"):
		motion.x = -speed
		$AnimatedSprite.flip_h = true
	else:
		motion.x = lerp(motion.x, 0, lerp_speed)
	
	if Input.is_action_just_pressed("jump") && is_on_floor():
		motion.y = -jump_height

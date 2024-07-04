extends Node2D


const SPEED = 60

var direction = 1

@onready var raycastRight = $RaycastRight
@onready var raycastLeft = $RaycastLeft
@onready var animatedSprite = $AnimatedSprite2D
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (raycastRight.is_colliding()):
		direction = -1
		animatedSprite.flip_h = true
	if (raycastLeft.is_colliding()):
		animatedSprite.flip_h = false
		direction = 1
	position.x += direction * SPEED * delta

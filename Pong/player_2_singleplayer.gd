extends CharacterBody2D

const speed = 300.0
@onready var ball = $Ball

func _ready():
	self.position.y = get_viewport_rect().size.y / 2
	self.position.x = 150

func _physics_process(delta):
	
	var inputDirecions = Vector2(0,ball.direction.y)
	velocity = inputDirecions*speed

	move_and_slide()


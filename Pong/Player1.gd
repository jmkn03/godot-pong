extends CharacterBody2D


const speed = 300.0

func _ready():
	self.position.y = get_viewport_rect().size.y / 2
	self.position.x = 1050


func _physics_process(delta):
	#Get Directions
	var inputDirecions = Vector2(
		0,
		Input.get_action_strength("down1") - Input.get_action_strength("up1")
	)
	velocity = inputDirecions*speed

	move_and_slide()

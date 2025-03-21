extends CharacterBody2D

const speed = 300.0
@onready var main_menu = $"../Main Menu"

func _ready():
	
	if(main_menu.gamemode == "singleplayer"):
		set_script("res://player_2_singleplayer.gd")
	self.position.y = get_viewport_rect().size.y / 2
	self.position.x = 150


func _physics_process(delta):
	var inputDirecions = Vector2(
		0,
		Input.get_action_strength("down2") - Input.get_action_strength("up2")
	)
	velocity = inputDirecions*speed

	move_and_slide()

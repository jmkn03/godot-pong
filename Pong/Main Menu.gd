extends Node2D
@onready var play_button = $"Play Button"
@onready var exit_button = $"Exit Button"
@onready var play_sound = $"play sound"
@onready var soundtrack = $Soundtrack
@onready var sss = $sss

var playing = false

func ready():
	#process_mode = Node.PROCESS_MODE_ALWAYS
	hide()
	soundtrack.play()
	sss.play()
	
	if(soundtrack.playing()):
		print("soundtrack")
	if(sss.playing()):
		print("sss")
	
func _process(delta):
	
	
	print(playing)
	if(playing):
		print("Hello")
		hide()
		
	play_button.text = "PLAY"
	exit_button.text = "QUIT GAME"

	play_button.position.x = get_viewport_rect().size.x /2 - play_button.size.x / 2
	play_button.position.y = get_viewport_rect().size.y /2 - play_button.size.y / 2 - 50
	exit_button.position.x = get_viewport_rect().size.x /2 - exit_button.size.x / 2
	exit_button.position.y = get_viewport_rect().size.y /2 - exit_button.size.y / 2 + 50

func _on_play_button_pressed():
	playing = true
	hide()
	get_tree().change_scene_to_file("res://play.tscn")
	play_sound.play()
	print("Pressed")

func _on_exit_button_pressed():
	get_tree().quit()

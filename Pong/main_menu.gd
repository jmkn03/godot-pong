extends Control

@onready var exit_button = $quit
@onready var single_player = $"single player"
@onready var multiplayer_button = $multiplayer

var playing
print("aaa")

func _ready():
	
	process_mode = Node.PROCESS_MODE_ALWAYS
	playing = false
	if(playing):
		hide()
	
func _process(delta):

	multiplayer_button.text = "MULTIPLAYER"
	single_player.text = "SINGLE PLAYER"
	exit_button.text = "QUIT GAME"

	multiplayer_button.position.x = get_viewport_rect().size.x /2 - multiplayer_button.size.x / 2
	multiplayer_button.position.y = get_viewport_rect().size.y /2 - multiplayer_button.size.y / 2 - 50
	single_player.position.x = get_viewport_rect().size.x /2 - single_player.size.x / 2
	single_player.position.y = get_viewport_rect().size.y /2 - single_player.size.y / 2
	exit_button.position.x = get_viewport_rect().size.x /2 - exit_button.size.x / 2
	exit_button.position.y = get_viewport_rect().size.y /2 - exit_button.size.y / 2 + 50

func _on_quit_pressed():
	get_tree().quit()


func _on_multiplayer_pressed():
	playing = true
	hide()
	gamemode = "multiplayer"
	get_tree().change_scene_to_file("res://play.tscn")


func _on_single_player_pressed():
	playing = true
	hide()
	gamemode = "singleplayer"
	get_tree().change_scene_to_file("res://play.tscn")
	
	
	
	

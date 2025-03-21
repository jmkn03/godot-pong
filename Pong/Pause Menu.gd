extends Node2D
@onready var resume_button = $"Resume Button"
@onready var quit_to_menu_button = $"Quit to menu button"
@onready var restart_button = $"Restart Button"
@onready var game_manager = $GameManager

func _ready():
	hide()

func _process(delta):
	
	resume_button.text = "RESUME GAME"
	quit_to_menu_button.text = "QUIT TO MAIN MENU"
	restart_button.text = "RESTART GAME"
			
	resume_button.position.x = get_viewport_rect().size.x /2 - resume_button.size.x / 2
	resume_button.position.y = get_viewport_rect().size.y /2 - resume_button.size.y / 2 - 50
	restart_button.position.x = get_viewport_rect().size.x /2 - restart_button.size.x / 2
	restart_button.position.y = get_viewport_rect().size.y /2 - restart_button.size.y / 2
	quit_to_menu_button.position.x = get_viewport_rect().size.x /2 - quit_to_menu_button.size.x / 2
	quit_to_menu_button.position.y = get_viewport_rect().size.y /2 - quit_to_menu_button.size.y / 2 + 50

	if(Input.is_action_just_pressed("pause") ):


func pause():
	get_tree().paused = true
	
func resume():
	get_tree().paused = false


func _on_resume_button_pressed():
	resume()
	

func _on_quit_to_menu_button_pressed():
	game_manager.get_tree().change_scene_to_file("res://main_menu.tscn")
	
func _on_restart_button_pressed():
	resume()
	get_tree().reload_current_scene()
	

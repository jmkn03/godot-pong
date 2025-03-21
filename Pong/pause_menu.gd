extends Control

@onready var resume_button = $resume_button
@onready var restart_button = $restart_button
@onready var menu_button = $menu_button
@onready var main_menu = $"../Main Menu"

func _ready():
	process_mode = Node.PROCESS_MODE_ALWAYS
	hide()

func _process(delta):

	resume_button.text = "RESUME GAME"
	menu_button.text = "QUIT TO MAIN MENU"
	restart_button.text = "RESTART GAME"
			
	resume_button.position.x = get_viewport_rect().size.x /2 - resume_button.size.x / 2
	resume_button.position.y = get_viewport_rect().size.y /2 - resume_button.size.y / 2 - 50
	restart_button.position.x = get_viewport_rect().size.x /2 - restart_button.size.x / 2
	restart_button.position.y = get_viewport_rect().size.y /2 - restart_button.size.y / 2
	menu_button.position.x = get_viewport_rect().size.x /2 - menu_button.size.x / 2
	menu_button.position.y = get_viewport_rect().size.y /2 - menu_button.size.y / 2 + 50

	if(Input.is_action_just_pressed("pause") and get_tree().paused == true):
		resume()
	elif (Input.is_action_just_pressed("pause") and get_tree().paused == false):
		pause()
		
func pause():
	show()
	get_tree().paused = true
	
func resume():
	hide()
	get_tree().paused = false

func _on_resume_button_pressed():
	resume()
	
func _on_restart_button_pressed():
	resume()
	get_tree().reload_current_scene()
	
func _on_menu_button_pressed():
	resume()
	get_tree().change_scene_to_file("res://main_menu.tscn")

extends Node2D

var ball_scene = preload("res://ball.tscn")
@onready var points_pl_1 = 0;
@onready var points_pl_2 = 0;
@onready var score_1 = $"../Score1"
@onready var score_2 = $"../Score2"
@onready var winner_text = $Label
@onready var pause_menu = $"../Pause Menu"
@onready var main_menu = $"../Main Menu"
@onready var player_2 = $"../Player2"

var paused = false

func _ready():
	main_menu.hide()
	process_mode = Node.PROCESS_MODE_ALWAYS

	score_1.position.x = get_viewport_rect().size.x / 4
	score_1.position.y = get_viewport_rect().size.y / 6
	
	score_2.position.x = get_viewport_rect().size.x *3 / 4
	score_2.position.y = get_viewport_rect().size.y / 6
	
func _process(delta):
	
	print(main_menu.gamemode)
	score_1.text = str(points_pl_1)
	score_2.text = str(points_pl_2)
	
	if(points_pl_1 == 3):
		get_tree().change_scene_to_file("res://pl_1_winner_text.tscn")
	else: 
		if(points_pl_2 == 3):
			get_tree().change_scene_to_file("res://pl_2_winner_text.tscn")
			
func goal(side):
	if(side == $"../Right"):
		points_pl_1 += 1
	else:
		points_pl_2 += 1
	
	var new_ball = ball_scene.instantiate()
	new_ball.area_entered.connect(new_ball._on_area_entered)
	get_parent().add_child(new_ball)
	
func restart():
	points_pl_1 = 0
	points_pl_2 = 0
	goal($"../Right")
	points_pl_1 = 0
	points_pl_2 = 0

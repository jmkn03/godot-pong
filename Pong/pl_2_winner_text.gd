extends Node2D
@onready var label = $Label


func _process(delta):
	
	$Label.text = "PLAYER 2 WINS!!!"
			
	label.position.x = get_viewport_rect().size.x /2 - label.size.x / 2
	label.position.y = get_viewport_rect().size.y /2 - label.size.y / 2

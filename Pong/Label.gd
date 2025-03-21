extends Label
@onready var game_manager = $GameManager

func _process(delta):
	
	self.text = "PLAYER 1 WINS!!!"
			
	self.position.x = get_viewport_rect().size.x /2 - self.size.x / 2
	self.position.y = get_viewport_rect().size.y /2 - self.size.y / 2
	
	
	

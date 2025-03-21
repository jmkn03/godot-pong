extends Area2D

var ball_speed = 400
var direction = Vector2(randf_range(-1,1) , randf_range(-0.4,0.4))
@onready var game_manager = $"../GameManager"

func _ready():
	self.position.x = get_viewport_rect().size.x / 2;
	self.position.y = get_viewport_rect().size.y / 2;
	
func _process(delta):
	var velocity = direction.normalized() * ball_speed
	self.position += velocity*delta
	
func _on_body_entered(body):
	direction.x *= -1
	ball_speed += 20;
	print(ball_speed)

func _on_area_entered(area):
	if(area.is_in_group("wall")):
		direction.y *= -1
	else:
		game_manager.goal(area)
		queue_free()
		

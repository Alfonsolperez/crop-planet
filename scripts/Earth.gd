extends AnimatedSprite2D

@onready var healthbar = $Healthbar
var health = 100

func _ready():
	healthbar.init_health(health)

func _process(delta):
	if health <= 0:
		queue_free() #ded
		get_tree().change_scene_to_file("res://scenes/Dead.tscn")

func center_object():
	var viewport_size = get_viewport_rect().size
	self.position = viewport_size / 2


func _on_area_2d_area_entered(area):
	if area.is_in_group("cow"):
		health -= 20
	else:
		health -= 10
	
	healthbar.set_health(health)

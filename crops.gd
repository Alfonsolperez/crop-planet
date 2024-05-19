extends AnimatedSprite2D

@onready var healthbar = $Healthbar
var health = 100
var drain_rate = 2
var wither_drain_rate = 6

func _ready():
	healthbar.init_health(health)
	
func _process(delta):
	hp_drain(delta)

func hp_drain(delta):
	if health < 51:
		health -= wither_drain_rate*delta
	else:
		health -= drain_rate*delta
		
	healthbar.set_health(health)

func _on_area_2d_area_entered(area):
	if area.is_in_group("cow"):
		health -= 20
	else:
		health -= 10
	
	healthbar.set_health(health)
	
	if health <= 0:
		queue_free() #ded

extends Node2D

var d := 0.0
var radius := 250.0
var speed := 2
var direction := 1.0
var animalskilled = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if speed != 0:
		d += delta * direction
	var viewport_center = get_viewport_rect().size / 2
	if speed == 2:
		position = viewport_center + Vector2(
			sin(d * speed) * radius,
			cos(d * speed) * radius
		)
	
	var angle = atan2(viewport_center.y - position.y, viewport_center.x - position.x)
	rotation = angle - PI / 2  # Adding PI/2 to make bottom face the center
func _input(event):
	if Input.is_action_pressed("move_counterclockwise"):
		direction = 1.0
	elif Input.is_action_pressed("move_clockwise"):
		direction = -1.0
	elif Input.is_action_pressed("move_stop"):
		if speed == 0:
			speed = 2
		else:
			speed = 0
		
	


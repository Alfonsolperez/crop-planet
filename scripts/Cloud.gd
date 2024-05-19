extends Node2D

var d := 0.0
var radius := 250.0
var speed := 2
var animalskilled = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	var input_axis = -Input.get_axis("ui_left", "ui_right")
	spin(delta,input_axis)
	
func spin(delta,input_axis):
	if speed != 0:
		d += delta * input_axis
	var viewport_center = get_viewport_rect().size / 2
	position = viewport_center + Vector2(
		sin(d * speed) * radius,
		cos(d * speed) * radius
		)
	
	var angle = atan2(viewport_center.y - position.y, viewport_center.x - position.x)
	rotation = angle - PI / 2  # Adding PI/2 to make bottom face the center

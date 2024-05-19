extends Sprite2D

var speed: float = 200.0
var amplitude: float = 150.0
var frequency: float = 0.5
var is_moving: bool = false
var screen_width: float
var start_y: float
var time_passed: float = 0.0

func _ready():
	screen_width = get_viewport_rect().size.x
	hide()

func _process(delta: float):
	if Global.animalskilled  % 15 == 0 and Global.animalskilled  != 0 and not is_moving:
		start_moving()
	
	if is_moving:
		time_passed += delta
		# Calculate new position
		var new_x = position.x + speed * delta
		var new_y = start_y + amplitude * sin(time_passed * frequency * PI * 2)
		
		position = Vector2(new_x, new_y)
		
		# If the object moves off the right side of the screen, reset it
		if position.x > screen_width:
			reset_position()

func start_moving():
	is_moving = true
	start_y = randf_range(-amplitude, get_viewport_rect().size.y - (amplitude))
	position = Vector2(0, start_y)
	time_passed = 0.0
	show() # Show the object when it starts moving

func reset_position():
	is_moving = false
	hide() # Hide the object when it stops

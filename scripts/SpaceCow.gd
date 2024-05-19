extends Node2D

var target_position := Vector2.ZERO
var speed := 100.0

func _ready():
	spawn_at_random_side()

func _process(delta):
	# Move the cow towards the target position
	var direction = (target_position - position).normalized()
	position += direction * speed * delta
	
	look_at(target_position)
	# Check if the cow has reached the target position
	if position.distance_to(target_position) < 10.0:
		# If reached, spawn the cow at a random side again
		spawn_at_random_side()

func spawn_at_random_side():
	# Get the size of the viewport
	var viewport_size = get_viewport_rect().size
	
	# Randomly choose a side (0: top, 1: right, 2: bottom, 3: left)
	var side = randi() % 4
	
	# Define the spawn position based on the chosen side
	match side:
		0:  # Top
			position = Vector2(randf_range(0, viewport_size.x), -50)
		1:  # Right
			position = Vector2(viewport_size.x + 50, randf_range(0, viewport_size.y))
		2:  # Bottom
			position = Vector2(randf_range(0, viewport_size.x), viewport_size.y + 50)
		3:  # Left
			position = Vector2(-50, randf_range(0, viewport_size.y))
	
	# Set the target position as the center of the screen
	target_position = viewport_size / 2
	
func _on_area_2d_area_entered(area):
	spawn_at_random_side()
	Global.animalskilled += 1

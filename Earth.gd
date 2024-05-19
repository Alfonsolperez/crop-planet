extends AnimatedSprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. Alternatively, you can use _physics_process for physics-related updates.
func _process(delta):
	pass

func center_object():
	var viewport_size = get_viewport_rect().size
	self.position = viewport_size / 2

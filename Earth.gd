extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	center_object()

# Called every frame. Alternatively, you can use _physics_process for physics-related updates.
func _process(delta):
	center_object()

func center_object():
	var viewport_size = get_viewport_rect().size
	self.position = viewport_size / 2

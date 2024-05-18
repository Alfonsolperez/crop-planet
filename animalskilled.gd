extends Label

func _process(delta):
	self.text = "Animals Killed: " + str(Global.animalskilled)


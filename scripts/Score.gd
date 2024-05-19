extends Label

func _process(delta):
	Global.score += 1
	self.text = "Score: " + str(Global.score)
	

extends ProgressBar

var health = 0 : set = set_health

func init_health(_health):
	health = _health
	max_value = health
	value = health
	
func set_health(new_health):
	health = min(max_value, new_health)
	value = health

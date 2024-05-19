extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	$BtnContainer/StartBtn.grab_focus() # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_start_btn_pressed():
	get_tree().change_scene_to_file("res://scenes/cropplanet.tscn") # Replace with function body.

func _on_exit_btn_pressed():
	get_tree().quit() # Replace with function body.

func _on_options_btn_pressed():
	get_tree().change_scene_to_file("res://scenes/Options.tscn") # Replace with function body.

extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	$VBoxContainer/StartBtn.grab_focus() # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_start_btn_pressed():
	get_tree().change_scene_to_file("res://cropplanet.tscn") # Replace with function body.

func _on_exit_btn_pressed():
	get_tree().quit() # Replace with function body.

func _on_options_btn_pressed():
	get_tree().change_scene_to_file("res://Options.tscn") # Replace with function body.

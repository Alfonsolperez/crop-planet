extends Node2D

var score = 0
var animalskilled = 0

#alphabets

func _ready():
	pass

	


func _on_area_2d_area_entered(area):
	$AudioStreamPlayer2D.play()

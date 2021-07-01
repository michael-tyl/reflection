extends "res://scripts/level/level.gd"

func _init():
	add_obj("nexus", 4, 8, "");
	add_obj("rock", 4, 6, "");
	add_obj("rock", 5, 6, "");
	add_obj("rock", 4, 7, "");
	add_obj("rock", 5, 7, "");
	add_obj("synth", 2, 3, "d");
	add_obj("synth", 6, 3, "r");
	add_obj("synth", 7, 3, "r");
	add_obj("synth", 4, 2, "r");
	add_obj("synth", 5, 11, "l");
	add_obj("mirror", 5, 3, "ld");
	add_obj("mirror", 6, 6, "rd");
	add_obj("mirror", 7, 7, "rd");

func _next_level():
	Global.level = 7
	get_tree().change_scene("res://level7.tscn")

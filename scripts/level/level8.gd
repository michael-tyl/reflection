extends "res://scripts/level/level.gd"

func _init():
	add_obj("nexus", 7, 10, "");
	add_obj("rock", 2, 2, "");
	add_obj("rock", 5, 6, "");
	add_obj("rock", 7, 8, "");
	add_obj("rock", 6, 4, "");
	add_obj("synth", 1, 2, "d");
	add_obj("synth", 2, 1, "r");
	add_obj("synth", 5, 7, "l");
	add_obj("synth", 6, 6, "u");
	add_obj("mirror", 2, 3, "rd");
	add_obj("mirror", 0, 3, "rd");
	add_obj("mirror", 3, 2, "ld");
	add_obj("mirror", 4, 2, "rd");
	add_obj("mirror", 6, 2, "ld");
	add_obj("mirror", 7, 3, "ld");
	add_obj("mirror", 4, 6, "ld");
	add_obj("mirror", 5, 5, "ld");
	add_obj("mirror", 3, 10, "rd");
	add_obj("mirror", 2, 5, "ld");
	add_obj("mirror", 0, 8, "ld");

func _next_level():
	Global.level = 9
	get_tree().change_scene("res://level9.tscn")

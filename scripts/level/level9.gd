extends "res://scripts/level/level.gd"

func _init():
	add_obj("nexus", 0, 9, "");
	add_obj("rock", 1, 1, "");
	add_obj("rock", 2, 2, "");
	add_obj("rock", 3, 4, "");
	add_obj("rock", 4, 3, "");
	add_obj("rock", 0, 7, "");
	add_obj("rock", 2, 7, "");
	add_obj("rock", 7, 8, "");
	add_obj("rock", 0, 8, "");
	add_obj("synth", 0, 0, "r");
	add_obj("synth", 1, 0, "r");
	add_obj("synth", 3, 2, "u");
	add_obj("synth", 4, 2, "r");
	add_obj("synth", 5, 3, "u");
	add_obj("synth", 2, 6, "r");
	add_obj("synth", 6, 7, "u");
	add_obj("mirror", 0, 1, "ld");
	add_obj("mirror", 2, 1, "ld");
	add_obj("mirror", 2, 8, "ld");
	add_obj("mirror", 7, 9, "rd");
	add_obj("mirror", 7, 5, "ld");
	add_obj("mirror", 3, 5, "ld");
	add_obj("mirror", 4, 4, "rd");
	add_obj("mirror", 3, 3, "ld");
	add_obj("mirror", 2, 3, "ld");
	add_obj("mirror", 1, 2, "rd");
	add_obj("mirror", 0, 2, "rd");
	add_obj("mirror", 3, 0, "rd");
	add_obj("mirror", 8, 0, "ld");
	add_obj("mirror", 8, 10, "rd");
	add_obj("mirror", 2, 10, "ld");

func _next_level():
	Global.level = 10
	get_tree().change_scene("res://level10.tscn")

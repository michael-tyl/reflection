extends "res://scripts/level/level.gd"

func _init():
	add_obj("nexus", 1, 16, "");
	add_obj("rock", 1, 15, "");
	add_obj("rock", 0, 13, "");
	add_obj("rock", 2, 16, "");
	add_obj("rock", 1, 13, "");
	add_obj("rock", 4, 9, "");
	add_obj("synth", 1, 1, "r");
	add_obj("synth", 7, 9, "u");
	add_obj("synth", 7, 13, "u");
	add_obj("synth", 3, 17, "l");
	add_obj("synth", 4, 11, "l");
	add_obj("mirror", 0, 9, "rd");
	add_obj("mirror", 1, 9, "rd");
	add_obj("mirror", 0, 14, "ld");
	add_obj("mirror", 2, 15, "rd");
	add_obj("mirror", 3, 16, "ld");
	add_obj("mirror", 4, 7, "rd");
	add_obj("mirror", 6, 7, "ld");
	add_obj("mirror", 6, 12, "rd");
	add_obj("mirror", 4, 14, "ld");
	add_obj("mirror", 4, 15, "rd");
	add_obj("mirror", 1, 12, "rd");

func _next_level():
	Global.level = 8
	get_tree().change_scene("res://level8.tscn")

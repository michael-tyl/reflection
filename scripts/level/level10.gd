extends "res://scripts/level/level.gd"

func _init():
	add_obj("nexus", 0, 17, "");
	add_obj("rock", 0, 2, "");
	add_obj("rock", 0, 4, "");
	add_obj("rock", 0, 6, "");
	add_obj("rock", 0, 8, "");
	add_obj("rock", 0, 10, "");
	add_obj("rock", 0, 12, "");
	add_obj("rock", 0, 14, "");
	add_obj("rock", 0, 16, "");
	add_obj("rock", 1, 6, "");
	add_obj("rock", 1, 10, "");
	add_obj("rock", 2, 10, "");
	add_obj("rock", 2, 15, "");
	add_obj("rock", 4, 7, "");
	add_obj("rock", 4, 12, "");
	add_obj("rock", 6, 4, "");
	add_obj("rock", 4, 0, "");
	add_obj("synth", 0, 0, "r");
	add_obj("synth", 1, 2, "u");
	add_obj("synth", 1, 3, "r");
	add_obj("synth", 7, 1, "r");
	add_obj("synth", 4, 2, "r");
	add_obj("synth", 2, 5, "r");
	add_obj("synth", 1, 7, "l");
	add_obj("synth", 3, 7, "d");
	add_obj("synth", 2, 17, "l");
	add_obj("synth", 6, 9, "u");
	add_obj("synth", 7, 10, "u");
	add_obj("synth", 1, 11, "l");
	add_obj("synth", 1, 14, "u");
	add_obj("synth", 3, 12, "d");
	add_obj("synth", 4, 14, "l");
	add_obj("synth", 7, 8, "u");
	add_obj("mirror", 1, 4, "rd");
	add_obj("mirror", 7, 4, "rd");
	add_obj("mirror", 5, 4, "rd");
	add_obj("mirror", 2, 6, "rd");
	add_obj("mirror", 6, 7, "rd");
	add_obj("mirror", 2, 9, "rd");
	add_obj("mirror", 4, 11, "rd");
	add_obj("mirror", 2, 12, "ld");
	add_obj("mirror", 5, 15, "rd");
	add_obj("mirror", 7, 12, "ld");
	add_obj("mirror", 7, 16, "rd");

func button_string():
	return "Finish!"

func _next_level():
	Global.level = 10
	get_tree().change_scene("res://victory.tscn")

extends "res://scripts/level/level.gd"

func _init():
	add_obj("nexus", 3, 14, "");
	add_obj("rock", 3, 12, "");
	add_obj("rock", 3, 13, "");
	add_obj("rock", 4, 12, "");
	add_obj("synth", 2, 8, "r");
	add_obj("synth", 3, 4, "r");
	add_obj("synth", 4, 6, "r");
	add_obj("synth", 6, 10, "r");
	add_obj("mirror", 6, 12, "rd");
	add_obj("mirror", 2, 13, "ld");

func _next_level():
	Global.level = 6
	get_tree().change_scene("res://level6.tscn")

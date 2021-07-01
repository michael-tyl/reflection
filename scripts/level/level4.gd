extends "res://scripts/level/level.gd"

func _init():
	add_obj("nexus", 7, 8, "");
	add_obj("rock", 1, 4, "");
	add_obj("rock", 1, 6, "");
	add_obj("synth", 0, 4, "d");
	add_obj("synth", 5, 6, "u");
	add_obj("synth", 4, 11, "l");
	add_obj("mirror", 1, 8, "ld");
	add_obj("mirror", 4, 4, "ld");
	add_obj("mirror", 4, 8, "ld");

func _next_level():
	Global.level = 5
	get_tree().change_scene("res://level5.tscn")

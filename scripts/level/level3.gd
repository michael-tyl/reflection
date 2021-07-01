extends "res://scripts/level/level.gd"

func _init():
	add_obj("nexus", 1, 16, "");
	add_obj("rock", 1, 8, "ld");
	add_obj("synth", 7, 1, "r");
	add_obj("mirror", 7, 8, "rd");
	add_obj("synth", 1, 1, "r");

func _next_level():
	Global.level = 4
	get_tree().change_scene("res://level4.tscn")

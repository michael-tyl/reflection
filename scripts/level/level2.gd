extends "res://scripts/level/level.gd"

func _init():
	add_obj("nexus", 7, 16, "");
	add_obj("mirror", 1, 8, "ld");
	add_obj("mirror", 7, 8, "ld");
	add_obj("synth", 1, 1, "r");

func _next_level():
	Global.level = 3
	get_tree().change_scene("res://level3.tscn")

extends "res://scripts/level/level.gd"

func _init():
	add_obj("nexus", 4, 16, "");
	add_obj("synth", 4, 1, "r");

func _next_level():
	Global.level = 2
	get_tree().change_scene("res://level2.tscn")

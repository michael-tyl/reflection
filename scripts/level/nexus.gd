extends "res://scripts/level/obj.gd"

func _init():
	desctructible = false
	opaque = true
	texture_normal = load("res://img/sprites/nexus.png")
	
func type():
	return "nexus"

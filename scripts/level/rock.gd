extends "res://scripts/level/obj.gd"

func _init():
	desctructible = true
	opaque = true
	texture_normal = load("res://img/sprites/rock.png")
	
func type():
	return "rock"

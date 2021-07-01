extends "res://scripts/level/obj.gd"

var dir

func _init(d):
	desctructible = false
	opaque = true
	dir = d
	var path = "res://img/sprites/mirror-" + dir[0] + "-" + dir[1] + ".png"
	texture_normal = load(path)
	
func type():
	return "mirror"
	
func getDir():
	return dir

extends "res://scripts/level/obj.gd"

var uses
var row
var col
var dir

func _init(r, c, d):
	desctructible = false
	opaque = true
	row = r
	col = c
	dir = d
	uses = 1
	texture_normal = load("res://img/sprites/synthesizer-" + dir + "-init.png")
	
func set_uses(u):
	uses = u

func _pressed():
	if get_parent().get_parent().can_fire() and uses > 0:
		if uses == 1:
			uses = 0
			texture_normal = load("res://img/sprites/synthesizer-" + dir + ".png")
			get_parent().get_parent().fire(row, col, dir)
		else:
			uses -= 1
			get_parent().get_parent().fire(row, col, dir)

func type():
	return "synth"

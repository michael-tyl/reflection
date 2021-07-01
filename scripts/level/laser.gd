extends TextureRect

var accum = 0
var dir
var velocity
var orientation
var changed = false

# initialize laser
func _init(d):
	dir = d
	if dir == "l" or dir == "r":
		orientation = "h"
		texture = load("res://img/sprites/laser.png")
	else:
		orientation = "v"
		texture = load("res://img/sprites/laser-vert.png")
	setVelocity()

# used to change velocity using dir instance variable
func setVelocity():
	if dir == "r":
		velocity = Vector2(1, 0)
	elif dir == "l":
		velocity = Vector2(-1, 0)	
	elif dir == "d":
		velocity = Vector2(0, 1)
	elif dir == "u":
		velocity = Vector2(0, -1)
	
# used to change direction of laser and make other necessary changes
func changeDir(newDir):
	if dir == "r" and newDir == "u" or dir == "u" and newDir == "r":
		texture = load("res://img/sprites/laser-lu.png")
	elif dir == "r" and newDir == "d" or dir == "d" and newDir == "r":
		texture = load("res://img/sprites/laser-ld.png")
	elif dir == "l" and newDir == "d" or dir == "d" and newDir == "l":
		texture = load("res://img/sprites/laser-rd.png")
	elif dir == "l" and newDir == "u" or dir == "u" and newDir == "l":
		texture = load("res://img/sprites/laser-ru.png")
	dir = newDir
	if dir == "l" or dir == "r":
		orientation = "h"
	else:
		orientation = "v"
	changed = true
	setVelocity()

# runs every new frame, delta is change in time from previous frame in seconds
func _process(delta):
	accum += delta
	# every 1/4 second, move the laser one spot over
	if accum > 0.1:
		get_parent().get_parent().move_laser()
		accum = 0
		# make sure orientation is correct
		if changed:
			if orientation == "h":
				texture = load("res://img/sprites/laser.png")
			else:
				texture = load("res://img/sprites/laser-vert.png")
	rect_position += velocity * 96 * 10 * delta
	

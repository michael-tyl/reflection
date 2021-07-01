extends Node2D

var grid = []
var canvas = CanvasLayer.new()
var laser_dir
var laser_pos = [0, 0]
var laser
var ready = true
var shots = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	add_child(canvas)
	for i in range(9):
		for j in range(18):
			var tile = TextureRect.new()
			tile.texture = load("res://img/sprites/tile.png")
			tile.rect_position = Vector2(x(j), y(i))
			add_child(tile)
	_level_init()
	
func _level_init():
	pass

# used to add new objects to the level
func add_obj(type, row, col, dir):
	# fill grid if empty
	if grid == []:
		for i in range(9):
			grid.append([])
			for j in range(18):
				grid[i].append(null)
	# create object and add it to the level
	var obj
	if type == "nexus":
		obj = load("res://scripts/level/nexus.gd").new()
	elif type == "synth":
		obj = load("res://scripts/level/synthesizer.gd").new(row, col, dir)
		shots += 1
	elif type == "mirror":
		obj = load("res://scripts/level/mirror.gd").new(dir)
	elif type == "rock":
		obj = load("res://scripts/level/rock.gd").new()
	else:
		return
	grid[row][col] = obj
	# obj sprites are 92x92px while tiles are 96x96px
	obj.rect_position = Vector2(x(col) + 2, y(row) + 2)
	canvas.add_child(obj)
	
# used for adding new syntheziers with more than 1 use
func add_synth(uses, row, col, dir):
	# fill grid if empty
	if grid == []:
		for i in range(9):
			grid.append([])
			for j in range(18):
				grid[i].append(null)
	# create object and add it to the level
	var obj = load("res://scripts/level/synthesizer.gd").new(row, col, dir)
	shots += uses
	grid[row][col] = obj
	obj.rect_position = Vector2(x(col) + 2, y(row) + 2)
	canvas.add_child(obj)

# fires a laser
func fire(row, col, dir):
	shots -= 1
	laser = load("res://scripts/level/laser.gd").new(dir)
	laser.rect_position = Vector2(x(col), y(row))
	canvas.add_child(laser)
	laser_dir = dir
	laser_pos = [row, col]
	ready = false
	
func move_laser():
	# check laser direction and change laser pos
	if laser_dir == "r":
		laser_pos[1] += 1
	elif laser_dir == "l":
		laser_pos[1] -= 1
	elif laser_dir == "u":
		laser_pos[0] -= 1
	elif laser_dir == "d":
		laser_pos[0] += 1
	# check if laser is out of bounds
	if laser_pos[0] < 0 or laser_pos[0] > 8 or laser_pos[1] < 0 or laser_pos[1] > 17:
		laser.queue_free()
		ready = true
		if shots < 1:
			fail()
		return
	# make sure laser position doesnt get desynced
	laser.rect_position = Vector2(x(laser_pos[1]), y(laser_pos[0]))
	# check for collisions
	if grid[laser_pos[0]][laser_pos[1]] != null:
		# if nexus, win
		if grid[laser_pos[0]][laser_pos[1]].type() == "nexus":
			laser.queue_free()
			ready = true
			win()
		# if mirror, reflect
		elif grid[laser_pos[0]][laser_pos[1]].type() == "mirror":
			if grid[laser_pos[0]][laser_pos[1]].getDir() == "ld":
				if laser_dir == "r":
					laser_dir = "d"
					laser.changeDir("d")
				elif laser_dir == "l":
					laser_dir = "u"
					laser.changeDir("u")
				elif laser_dir == "u":
					laser_dir = "l"
					laser.changeDir("l")
				elif laser_dir == "d":
					laser_dir = "r"
					laser.changeDir("r")
			else:
				if laser_dir == "r":
					laser_dir = "u"
					laser.changeDir("u")
				elif laser_dir == "l":
					laser_dir = "d"
					laser.changeDir("d")
				elif laser_dir == "u":
					laser_dir = "r"
					laser.changeDir("r")
				elif laser_dir == "d":
					laser_dir = "l"
					laser.changeDir("l")
		# if laser collides with rock, destroy laser and rock
		elif grid[laser_pos[0]][laser_pos[1]].type() == "rock":
			laser.queue_free()
			grid[laser_pos[0]][laser_pos[1]].queue_free()
			grid[laser_pos[0]][laser_pos[1]] = null
			ready = true
			if shots < 1:
				fail()

# make sure the previous laser is gone before firing a new laser
func can_fire():
	return ready

func fail():
	# create "Oops, try again!" label
	var label = Label.new()
	# create font
	var dynamic_font = DynamicFont.new()
	dynamic_font.font_data = load("res://fonts/Montserrat/Montserrat-Bold.ttf")
	dynamic_font.size = 72
	dynamic_font.outline_size = 3
	dynamic_font.outline_color = Color(0,0,0,1)
	label.set("custom_fonts/font", dynamic_font)
	label.text = "Oops, try again!"
	label.rect_position = Vector2(500, 300)
	canvas.add_child(label)
	# create "Retry" button
	var button = Button.new()
	button.set("custom_fonts/font", dynamic_font)
	button.text = "Retry"
	button.connect("pressed", self, "_restart")
	button.rect_position = Vector2(500, 600)
	canvas.add_child(button)
	ready = false

func win():
	# create "Good job!" label
	var label = Label.new()
	# create font
	var dynamic_font = DynamicFont.new()
	dynamic_font.font_data = load("res://fonts/Montserrat/Montserrat-Bold.ttf")
	dynamic_font.size = 72
	dynamic_font.outline_size = 3
	dynamic_font.outline_color = Color(0,0,0,1)
	label.set("custom_fonts/font", dynamic_font)
	label.text = "Nice job!"
	label.rect_position = Vector2(500, 300)
	canvas.add_child(label)
	# create "next level" button
	var button = Button.new()
	button.set("custom_fonts/font", dynamic_font)
	button.text = button_string()
	button.connect("pressed", self, "_next_level")
	button.rect_position = Vector2(500, 600)
	canvas.add_child(button)

# can be overridden to change what the button says
func button_string():
	return "Next level!"

func _next_level():
	pass

func _restart():
	get_tree().reload_current_scene()

# returns x/y coordinate given row in a grid (top left)
func x(col):
	return 96 + 96 * col

func y(row):
	return 130 + 96 * row

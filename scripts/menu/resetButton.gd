extends Button

func _pressed():
	Global.level = 1
	get_tree().change_scene("res://level1.tscn")

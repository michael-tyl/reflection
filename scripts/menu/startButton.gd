extends Button

func _on_Button_pressed():
	get_tree().change_scene("res://level" + str(Global.level) + ".tscn")

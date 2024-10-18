extends Control

@onready var pause_overlay: ColorRect = $pauseOverlay


func _input(event):
	if event.is_action_pressed("ui_cancel"):
		pause_overlay.visible = true
		var new_pause_state = not get_tree().paused 
		get_tree().paused = new_pause_state
		visible = new_pause_state
		#get_tree().change_scene_to_file("res://scene/menu.tscn")
	

func _on_main_menu_pressed() -> void:
	get_tree().paused=false
	get_tree().change_scene_to_file("res://scene/menu.tscn")
	print("Changed Scene")

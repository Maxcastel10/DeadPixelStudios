extends Control

@onready var pause_overlay: ColorRect = $pauseOverlay


func _input(event):
	if event.is_action_pressed("ui_cancel"):
		pause_overlay.visible = true
		var new_pause_state = not get_tree().paused 
		get_tree().paused = new_pause_state
		visible = new_pause_state
	
	
	
	

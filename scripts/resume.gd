extends Control
@onready var pause_overlay: ColorRect = $"../.."
@onready var resume: Button = $"."


func _ready():
	resume.pressed.connect(self._button_pressed)
	
func _button_pressed():
	pause_overlay.visible = true
	var new_pause_state = not get_tree().paused 
	get_tree().paused = new_pause_state
	pause_overlay.visible = new_pause_state

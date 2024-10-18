extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$VBoxContainer/Master_slider.value=db_to_linear(AudioServer.get_bus_volume_db(0))
	$VBoxContainer/Music_slider.value=db_to_linear(AudioServer.get_bus_volume_db(1))
	$VBoxContainer/SFX_slider.value=db_to_linear(AudioServer.get_bus_volume_db(2))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_master_slider_mouse_exited() -> void:
	release_focus()


func _on_music_slider_mouse_exited() -> void:
	release_focus()


func _on_sfx_slider_mouse_exited() -> void:
	release_focus()

extends Node2D
var queue =[]
var villager = preload("res://scene/villger_1.tscn")
var villager2 = preload("res://scene/villger_2.tscn")
var villager3 = preload("res://scene/villger_3.tscn")
var villager4 = preload("res://scene/villger_4.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_timer_timeout():
	if queue.size()<5:
		var enemy = [villager.instantiate(),villager2.instantiate(),villager3.instantiate(),villager4.instantiate()].pick_random()
		enemy.position = Vector2(0,0)
		enemy.scale.x=4.32
		enemy.scale.y=4.32
		add_child(enemy)
		queue.append(enemy)

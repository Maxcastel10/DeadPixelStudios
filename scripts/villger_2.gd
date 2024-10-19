extends AnimatableBody2D
@onready var emotes = $emotes
var direction = 0
@onready var ani = $AnimatedSprite2D

var speed=200
# Called when the node enters the scene tree for the first time.
func _ready():
	emotes.visible=false
	#$Area2D.connect("inside",movedown)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if direction == 0:
		position.x=position.x+speed*delta
	if direction == 1:
		position.y=position.y+speed*delta
	if direction ==-1:
		ani.play("idle")
		pass
func movedown():
	direction=1
	pass
func stop():
	direction=-1

extends Area2D
var occupied=0
#signal inside
func _ready():
	pass

func _on_body_exited(body):
	print("in one")
	if occupied==0:
		body.movedown()
		occupied=1
	 
	#if body.direction==1:
		#body.stop()


func _on_body_entered(body):
	pass

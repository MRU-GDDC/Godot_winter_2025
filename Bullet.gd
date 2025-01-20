extends Area2D

const speed:int = 300
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position += transform.x * speed * delta



func _on_body_entered(body):
	body.queue_free()
	queue_free()

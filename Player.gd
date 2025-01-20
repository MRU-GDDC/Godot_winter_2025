extends Area2D


var mousePosition
const spell = preload("res://Bullet.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _process(delta):
	#add input code



func FireBullet():
	var bullet_instance = spell.instantiate()
	get_tree().root.add_child(bullet_instance)
	bullet_instance.global_position = global_position
	bullet_instance.rotation = rotation

func _input(event):
	if event is InputEventMouseMotion:
		mousePosition = event.position
		look_at(mousePosition)



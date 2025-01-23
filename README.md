# Godot Workshop

## Player code

```
extends Area2D

# add spell
const spell = preload("enter spell scene here")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _process(delta):
	#add input code
	pass



func FireSpell():

    # creat the Spell
	var spell_instance = spell.instantiate()

    # add the spell to the scene
	get_tree().root.add_child(spell_instance)

    # set the position of the speel
	spell_instance.global_position = global_position

    #set the rotation of the spell
	spell_instance.rotation = rotation


func _input(event):
    # get the mouseposition when the mouse moves
	if event is InputEventMouseMotion:
        # make the player look towards the mouse
		look_at(event.position)



```

## spell code

```

func _process(delta):
	position += transform.x * speed * delta


```

## Enemy Spawner Code

```
    # creat the enemy
    var mob = mob_scene.instantiate()

    var mob_spawn_location = $Path2D/PathFollow2D

    # get a random location on the spwan path.
    mob_spawn_location.progress_ratio = randf()

    # Set the mob's direction perpendicular to the path direction.
    var direction = mob_spawn_location.rotation + PI / 2

    # Set the mob's position to  random location.
    mob.position = mob_spawn_location.position

    # Add some randomness to the direction.
    direction += randf_range(-PI / 4, PI / 4)
    mob.rotation = direction

    # Choose the velocity for the mob.
    var velocity = Vector2(randf_range(150.0, 250.0), 0.0)
    mob.linear_velocity = velocity.rotated(direction)

    # add the enemy to the Main scene.
    add_child(mob)

```

```

```

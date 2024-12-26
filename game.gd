extends Node2D

var Pillar = preload("res://pillar.tscn")

func spawn_pillar():
	var bottomPiller = Pillar.instantiate()
	bottomPiller.initialPosition = Vector2(1200,324);
	bottomPiller.height = 30;
	#bottomPiller.position = Vector2(1200, 300) # Right side of screen
	add_child(bottomPiller)
	
	# Add collision detection in pillar scene
	#pillar.body_entered.connect(func(body):
		#if body.is_in_group("player"):
			#body.queue_free() # Kill player
	#)


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var screen_height = DisplayServer.window_get_size().y # Gets current window height

	print_debug(screen_height)
	pass # Replace with function body.
	#spawn_pillar()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_spawn_timer_timeout() -> void:
	#pass # Replace with function body.
	spawn_pillar()

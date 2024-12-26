extends Node2D

var Pillar = preload("res://pillar.tscn")
var gap:float = 100

func spawn_pillar():
	var screen_height = DisplayServer.window_get_size().y # Gets current window height
		
	var bottomPiller = Pillar.instantiate()
	var topPiller = Pillar.instantiate()
	
	var gapHeight = randf_range(gap, screen_height - gap) # 100-548
	var bottom_height = gapHeight - gap / 2
	var top_height = screen_height - gapHeight - gap / 2
	
	bottomPiller.initialPosition = Vector2(1200, screen_height)
	bottomPiller.pillarHeight = bottom_height - gap / 2
	add_child(bottomPiller)
	
	topPiller.initialPosition = Vector2(1200, 0)
	topPiller.pillarHeight = top_height - gap / 2
	add_child(topPiller)

	
	# Add collision detection in pillar scene
	#pillar.body_entered.connect(func(body):
		#if body.is_in_group("player"):
			#body.queue_free() # Kill player
	#)


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#print_debug(screen_height)
	pass # Replace with function body.
	#spawn_pillar()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _on_spawn_timer_timeout() -> void:
	#pass # Replace with function body.
	print_debug("spawned lol")
	spawn_pillar()

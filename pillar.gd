extends Area2D

@export var height: int # Allows setting from inspector and code
@export var initialPosition: Vector2 # Allows setting from inspector and code


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#var random_height = randf_range(100, 200)
	position = initialPosition
	$ColorRect.size.y = height * 2
	print_debug(height)
	$ColorRect.position.y = -height
	$CollisionShape2D.shape.size.y = height * 2
	# Center the collision shape with the new height
	#$CollisionShape2D.position.y = height 

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func _physics_process(delta):
	position.x -= 5
	if position.x < -100:
		queue_free()

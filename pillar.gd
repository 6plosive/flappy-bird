extends Area2D

@export var pillarHeight: int # Allows setting from inspector and code
@export var initialPosition: Vector2 # Allows setting from inspector and code

@export var speed = 200


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#var random_height = randf_range(100, 200)
	position = initialPosition
	$ColorRect.size.y = pillarHeight * 2
	$ColorRect.position.y = -pillarHeight
	# $CollisionShape2D.shape.size.y = pillarHeight * 2
	var new_shape = RectangleShape2D.new()
	new_shape.extents = Vector2($CollisionShape2D.shape.extents.x, pillarHeight)
	$CollisionShape2D.shape = new_shape

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func _physics_process(delta):
	position.x -= speed * delta
	if position.x < -100:
		queue_free()

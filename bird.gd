extends Sprite2D

var velocity = Vector2.ZERO
var jump_force = -400
var gravity = 20
@onready var rb = $RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	#if Input.is_action_pressed("ui_accept"): # Spacebar
		#velocity.y = jump_force
		

func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_accept"):
		rb.linear_velocity.y = jump_force

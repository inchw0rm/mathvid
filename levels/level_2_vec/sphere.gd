extends RigidBody3D

@export var magnitude = 1
signal directionVector
signal positionVector

var direction: Vector2 = Vector2()
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _physics_process(delta: float) -> void:
	var a = Input.get_vector('ui_left', 'ui_right', 'ui_up', 'ui_down') * magnitude
	
	emit_signal("directionVector", angular_velocity)
	emit_signal("positionVector", position)
	
	set_axis_velocity(Vector3(a.x, 0, a.y) * 10)
	#set_linear_velocity(Vector3(a.x, 0, a.y) * 10)

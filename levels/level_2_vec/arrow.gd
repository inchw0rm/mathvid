extends MeshInstance3D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#position = get_parent().linear_velocity + Vector3(1,1,1)
	pass

## Make the "arrow" stick to the ball position
func _on_rigid_body_3d_position_vector(value) -> void:
	value.y += 1
	position = value

func _on_rigid_body_3d_direction_vector(value: Vector3) -> void:
	rotation.z = Vector2(value.x, value.z).angle()
	scale.y = value.length() / 10

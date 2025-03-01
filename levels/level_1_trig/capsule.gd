extends RigidBody3D

@export var hover_freq = 0.005
@export var hover_amplitude = 0.2

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

func _physics_process(_delta: float) -> void:
	position.y = sin(Time.get_ticks_msec() * hover_freq) * hover_amplitude

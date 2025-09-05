extends CharacterBody2D

const GRAVITY = 1000
var reset_pos = Vector2()
var vel_fall = 0

func _ready() -> void:
	reset_pos = global_position

func _physics_process(delta: float) -> void:
	if not $Timer.is_stopped():
		vel_fall += GRAVITY * delta
		global_position.y += vel_fall * delta

func _on_detector_body_shape_entered(body: Node2D) -> void:
	$Animation.play("falling")
	$Image.play("falling")
	$Detector.monitoring = false

func _on_animation_animation_finished(anim_name: StringName) -> void:
	if anim_name == "falling":
		collision_layer = 0
		$Timer.start()

func _on_timer_timeout() -> void:
	global_position = reset_pos
	$Animation.play("idle")
	$Image.play("idle")
	$Detector.monitoring = true
	collision_layer = 2

extends Area2D
@export var Speed = 400
@onready var BGmusic = $"../BGmusic"
@onready var Enemy_hit = $"../EnemyHit"

func _process(delta):
	var velocity = Vector2.ZERO
	if Input.is_action_pressed("move_down"):
		velocity += 1
	if Input.is_action_pressed("move_left"):
		velocity -= 1
	if Input.is_action_pressed("move_right"):
		velocity += 1
	if Input.is_action_pressed("move_up"):
		velocity -= 1
	
	if velocity.length() > 0:
		velocity = velocity * Speed
	position += velocity * delta


func _on_body_entered(body):
	hide()
	Enemy_hit.play()
	BGmusic.stop


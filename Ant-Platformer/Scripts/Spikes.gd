tool
extends Area2D

export var length = 2
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$Sprite.region_rect = Rect2(0, 0, 8 * length, 8)
	$CollisionShape2D.shape.extents = Vector2(4 * length, 4)
	$CollisionShape2D.position = Vector2(4 * length, 4)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if Engine.editor_hint:
		$Sprite.region_rect = Rect2(0, 0, 8 * length, 8)
		$CollisionShape2D.shape.extents = Vector2(4 * length, 4)
		$CollisionShape2D.position = Vector2(4 * length, 4)
		
		

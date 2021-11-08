extends Area2D

export(String, FILE, "*.tscn") var next_scene


func _on_Goal_body_entered(body):
	if body.get_name() == "Player":
		get_tree().change_scene(next_scene)

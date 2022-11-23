extends Area

func _ready():
	$Ambience.playing = true

func _on_key_body_entered(body):
	if body.name == "Player":
		var exit = get_node_or_null("/root/World/Exit")
		if exit != null:
			exit.unlock()
			queue_free()

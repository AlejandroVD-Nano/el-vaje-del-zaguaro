extends ColorRect

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "CharacterBody2D":
		Global.agua = 0
		Global.billete = 0
		get_tree().change_scene_to_file("res://Escenas/fondo.tscn")

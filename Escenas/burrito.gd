extends Node
func _on_area_2d_body_entered(body: Node2D) -> void:
	Global.coleccionable +=1
	queue_free()

extends Node2D

func _physics_process(delta: float) -> void:
	if Global.agua == 0:
		$"0".visible=true
		$"1".visible=false
		$"2".visible=false
		$"3".visible=false
		$"4".visible=false
		$"5".visible=false
	elif Global.agua == 1:
		$"0".visible=false
		$"1".visible=true
		$"2".visible=false
		$"3".visible=false
		$"4".visible=false
		$"5".visible=false
	elif Global.agua == 2:
		$"0".visible=false
		$"1".visible=false
		$"2".visible=true
		$"3".visible=false
		$"4".visible=false
		$"5".visible=false
	elif Global.agua == 3:
		$"0".visible=false
		$"1".visible=false
		$"2".visible=false
		$"3".visible=true
		$"4".visible=false
		$"5".visible=false
	elif Global.agua == 4:
		$"0".visible=false
		$"1".visible=false
		$"2".visible=false
		$"3".visible=false
		$"4".visible=true
		$"5".visible=false
	elif Global.agua == 5:
		$"0".visible=false
		$"1".visible=false
		$"2".visible=false
		$"3".visible=false
		$"4".visible=false
		$"5".visible=true
	

extends CharacterBody2D

@onready var anim = $AnimatedSprite2D


func _physics_process(delta:):
	if Global.billete == 0:
		self.visible = false
	
	# Verificar si el jugador tiene el objeto
	if Global.billete == 1:
		mostrar_npc()

func mostrar_npc():
	visible = true
	anim.play("idle")

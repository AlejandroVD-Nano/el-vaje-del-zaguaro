extends CharacterBody2D

# Configuración de movimiento
@export var velocidad = 200
@export var velocidad_salto = -400
@export var gravedad = 800

# Variables internas
var direccion = Vector2()
var en_suelo = false

# Referencias a nodos
@onready var anim = $AnimatedSprite2D
@onready var sprite = $AnimatedSprite2D  # Alternativa si usas Sprite2D

func _physics_process(delta):
	# 1. Aplicar gravedad
	if not is_on_floor():
		velocity.y += gravedad * delta
	en_suelo = is_on_floor()
	
	# 2. Obtener entrada del jugador
	direccion.x = Input.get_axis("ui_left", "ui_right")  # Versión optimizada
	velocity.x = direccion.x * velocidad
	
	# 3. Manejar salto (solo física)
	if en_suelo and Input.is_action_just_pressed("ui_up"):
		velocity.y = velocidad_salto
	
	# 4. Mover el personaje
	move_and_slide()
	
	# 5. Gestionar animaciones
	update_animations()

func update_animations():
	if direccion.x != 0:
		# Animación de caminar y voltear sprite
		anim.play("walk")
		anim.flip_h = direccion.x < 0  # True si va a izquierda
	else:
		# Animación de estar quieto
		anim.play("idle")

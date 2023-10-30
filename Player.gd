extends CharacterBody2D

var speed: int = 400

func _physics_process(_delta):
	updateVelocity()
	move_and_slide()
	keepInViewport()
	
#funkcja ogarnicza pozycje gracza do granic widoku (ekranu) odpowiednio dla współrzędniej x oraz y
func keepInViewport():
	position.x = clamp(position.x, 0, get_viewport_rect().size.x)
	position.y = clamp(position.y, 0, get_viewport_rect().size.y)
	
#oblicza wektor prędkości i odpowiada za ruch gracza
func updateVelocity():
	var direction = Input.get_vector("left","right","up","down")
	velocity = direction.normalized() * speed 
	
	

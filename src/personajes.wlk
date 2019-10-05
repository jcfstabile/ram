import wollok.game.*

object r{
	var property image = "assets/r-face-smile.png"
	var property position = game.at(1,1)
	var grabed = nada 

	method position() { //Bad practice or TABU or just collaboration
		grabed.position(position)
		return position
	}

	method travel() { game.colliders(self).find{
		visible=> visible.isPortal() }.travel()
	}

	method trigger() { grabed.trigger() }

	method grab() { 
		grabed = game.colliders(self).head()
	}

	method ungrab() { 
		console.println("ungrab")
		grabed = nada
	}
}

object nada{
	var property position = null
	method trigger(){}
}

object g{
	var property image = "assets/gun.png"
	var property position = game.at(5,5)
	const property isPortal = false

	method trigger(){
		game.addVisual(new P(position = position))
	}
}

class P{
	var property position
	const property image = "assets/portal.gif"
	const property isPortal = true
	
	method travel() { 
		fondo.image("assets/ram-fondo2.png")
		game.removeVisual(self) 
	}

}

object fondo{ var property image = "assets/ram-fondo3.png"
		var property position = game.origin()
}

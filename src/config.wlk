import personajes.*
import wollok.game.*

object config{
	method teclas(){
		keyboard.z().onPressDo({ r.grab() })
		keyboard.x().onPressDo({ r.ungrab() })
		keyboard.space().onPressDo({ r.trigger() })
		keyboard.p().onPressDo({ r.travel() })
	}
}

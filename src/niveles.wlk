import personajes.*
import wollok.game.*

object nivel2{
	const _fondo = new Fondo(image = "assets/ram-fondo2.png")
	const character = r
	const property visibles = []

	method show(){
		game.addVisual(_fondo)
		game.addVisualCharacter(character)
		visibles.forEach{visible => game.addVisual(visible)}
	}
	method hide(){
		([_fondo, character] + visibles).forEach{
			v => game.removeVisual(v)}
	}
}

object nivel1{
	const _fondo = new Fondo(image = "assets/ram-fondo3.png")
	const character = r
	const property visibles = [g]

	method show(){
		game.addVisual(_fondo)
		game.addVisualCharacter(character)
		visibles.forEach{visible => game.addVisual(visible)}
	}
	method hide(){
		([_fondo, character] + visibles).forEach{
			v => game.removeVisual(v)}
	}
}

import camiones.*
import deposito.*


object knightRider {

	var peso = 500
	var nivelDePeligrosidad = 10

	method saberNivelDePeligrosidad() {
		return nivelDePeligrosidad
	}

	method peso() {
		return peso
	}

}

object bumblebee {

	var peso = 800
	var estado = robot

	method transformadoEn(transformacion) {
		estado = transformacion
	}

	method saberNivelDePeligrosidad(transformacion) {
		return estado.sabernivelDePeligrosidad()
	}

}

object auto {

	method saberNivelDePeligrosidad() {
		return 15
	}

}

object robot {

	method saberNivelDePeligrosidad() {
		return 30
	}

}

object ladrillo {

	var peso = 2
	var nivelDePeligrosidad = 2
	var cantidadDeLadrillos = 10

	method cantidadDeLadrillosALevar(nuevaCantidad) {
		cantidadDeLadrillos = cantidadDeLadrillos + nuevaCantidad
	}

	method saberNivelDePeligrosidad() {
		return nivelDePeligrosidad
	}

	method peso() {
		return peso * cantidadDeLadrillos
	}

}


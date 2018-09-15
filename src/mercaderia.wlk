import camiones.*
import deposito.*
import ruta.*
import motoneta.*

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

	method peso() {
		return peso
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
	var cantidadDeLadrillos = 0

	method cantidadDeLadrillosALlevar(nuevaCantidad) {
		cantidadDeLadrillos = cantidadDeLadrillos + nuevaCantidad
	}

	method saberNivelDePeligrosidad() {
		return nivelDePeligrosidad
	}

	method calcularPeso() {
		peso = peso * cantidadDeLadrillos
	}

	method peso() {
		return peso
	}

	method nivelDePeligrosidad() {
		return nivelDePeligrosidad
	}

}

object contenedorPortuario {

	var otrasCosas = []
	var peso = 100
	var nivelDePeligrosidad
	var pesoTotal

	method saberNivelDePeligrosidad() {
		nivelDePeligrosidad = self.cualEslaCosaMasPeligrosa().nivelDePeligrosidad()
	// se genero este metodo para que devuelva el NIVEL (NUMERICO) del objecto mas peligroso
	}

	method sumaDeTodasLasCosas() {
		return otrasCosas.sum({ mercaderia => mercaderia.peso() })
	}

	method saberPesoTotalDelContenedor() {
		pesoTotal = peso + self.sumaDeTodasLasCosas()
	}

	method cualEslaCosaMasPeligrosa() {
		return otrasCosas.max({ mercaderia => mercaderia.saberNivelDePeligrosidad() })
	}

	method saberQueTanPeligrosoEsSegunElObjectoMasPeligroso() {
		nivelDePeligrosidad = self.cualEslaCosaMasPeligrosa()
	// se genero este metodo para que devuelva EL OBJECTO MAS PELIGROSO (NOMBRE) 
	}

	method peso() {
		return peso
	}

	method nivelDePeligrosidad() {
		return nivelDePeligrosidad
	}

}

object embalajeDeSeguridad {

	var peso
	var nivelDePeligrosidad

	method peso(mercaderia) {
		peso = mercaderia.peso()
	}

	method saberNivelDePeligrosidad(mercaderia) {
		nivelDePeligrosidad = (mercaderia.saberNivelDePeligrosidad() / 2)
	}

	method saberPeso() {
		return peso
	}

	method nivelDePeligrosidad() {
		return nivelDePeligrosidad
	}

}


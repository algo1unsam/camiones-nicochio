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

	// TODO ok, pero tratermos de guardar las cosas q se calculan, sino
	// hay que estar todo el tiempo preocupado por manenter esto actualizado
	// tengamos la cuenta que hay que hacer en un método y listo, se hace en el momento
	// y nunca debería fallar, es decir
	// method peso() {
	//      return peso * cantidadDeLadrillos
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

	// TODO aca lo mismo, el nombre mismo, indica q es un método de consulta,q si lo llamo, es porque quiero
	// justamente saber algo, entonces lo mas normal, es que este método, tenga un return, en lugar de hacer algo
	// y dejarlo ahi
	// return self.cualEslaCosaMasPeligrosa().nivelDePeligrosidad()
	// si vos ya sabes que el calculo es este, no puede fallar, entonces, para q guardarlo?
	method saberNivelDePeligrosidad() {
		nivelDePeligrosidad = self.cualEslaCosaMasPeligrosa().nivelDePeligrosidad()
	// se genero este metodo para que devuelva el NIVEL (NUMERICO) del objecto mas peligroso
	}

	method sumaDeTodasLasCosas() {
		return otrasCosas.sum({ mercaderia => mercaderia.peso() })
	}

	method saberPesoTotalDelContenedor() {
		pesoTotal = 100 + self.sumaDeTodasLasCosas()
	}

	method cualEslaCosaMasPeligrosa() {
		return otrasCosas.max({ mercaderia => mercaderia.saberNivelDePeligrosidad() })
	}

	// TODO este metodo no sirve para nada :P, quiero decir, no suma nada
	// habría que volarlo, cualEslaCosaMasPeligrosa ya hace todo lo que necesitas
	// nivelDePeligrosidad tampoco hace falta
	method saberQueTanPeligrosoEsSegunElObjectoMasPeligroso() {
		nivelDePeligrosidad = self.cualEslaCosaMasPeligrosa()
	// se genero este metodo para que devuelva EL OBJECTO MAS PELIGROSO (NOMBRE) 
	}

	method peso() {
		 return pesoTotal
	}

	method nivelDePeligrosidad() {
		return nivelDePeligrosidad
	}

}

object embalajeDeSeguridad {

	// TODO acá  el objeto "embadalo" debería estar guardado, es decir, acá si
	// debería ser un atributo ya que si yo llamo a peso y a saberNivelDePeligrosidad con
	// mercaderia diferente, sería inconsistente, debería referirse siempre al mismo objeto 
	// y por otro lado, peso(mercaderia) no es polimórfico
	
	var peso
	
	// TODO al igual que el anterior, esto es calculable, así que eso no debería ser un atributo
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


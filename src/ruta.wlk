import camiones.*

object ruta9 {

	var nivelDePeligrosidad = 50

	method saberNivelDePeligrosidad() {
		return nivelDePeligrosidad
	}

	method nuevoLimiteDeRuta(limite) {
		nivelDePeligrosidad = limite
	}

}


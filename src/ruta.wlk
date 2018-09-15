import camiones.*

object ruta {

	var nivelDePeligrosidad = 50

	method saberNivelDePeligrosidad() {
		return nivelDePeligrosidad
	}

	method nuevoLimiteDeRuta(limite) {
		nivelDePeligrosidad = limite
	}

}


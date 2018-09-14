import mercaderia.*
import ruta.*

object camion {

	var peso
	var materiales = []
	var cargaMaxima = 550

	method cargaleUnaCosa(mercaderia) {
		if (mercaderia.peso() > self.cargaDisponible()) {
			error.throwWithMessage("no se puede cargar el camion por que supera la carga")
		}
		materiales.add(mercaderia)
	}

	method descargaleUnaCosa(mercaderia) {
		materiales.remove(mercaderia)
	}

	method tenesCargado(mercaderia) {
		return materiales.contains()
	}

	method pesoTotalQueHayEnElCamion() {
		return materiales.sum({ mercaderia => mercaderia.peso() })
	}

	method cargaDisponible() {
		return cargaMaxima - self.pesoTotalQueHayEnElCamion()
	}

	method cualEslaCosaMasPeligrosa() {
		return materiales.max({ mercaderia => mercaderia.saberNivelDePeligrosidad() })
	}

	method saberSiPuedoIrPorLaRuta(nuevaRuta) {
		return self.cualEslaCosaMasPeligrosa() > nuevaRuta.nuevoLimiteDeRuta()
	}

}


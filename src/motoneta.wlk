import mercaderia.*
import camiones.*
import ruta.*
import deposito.*


object motoneta {
	var cargaMaxima = 100
	var materialesMotoneta = []
	var nivelDePeligrosidad = 5
	
	
	method cargaleUnaCosa(mercaderia) {
		if (mercaderia.peso() > self.cargasDisponibles() &&  mercaderia.saberNivelDePeligrosidad() > self.peligrosidadMaxima()) {
			error.throwWithMessage("no se puede cargar el camion por que supera la carga")
		}
		materialesMotoneta.add(mercaderia)
	}
	
		method pesoTotalQueHayEnlamotoneta() {
		return materialesMotoneta.sum({ mercaderia => mercaderia.peso() })
	}
	
	method cargasDisponibles(){
		return cargaMaxima - self.pesoTotalDeLaMotoneta()
	}
	
	method peligrosidadMaxima(){
		return nivelDePeligrosidad
	}
	
	method pesoTotalDeLaMotoneta(){
		return materialesMotoneta.max ({ mercaderia => mercaderia.peso()})
	}
}

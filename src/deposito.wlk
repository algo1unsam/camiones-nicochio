import camiones.*
import motoneta.*
import mercaderia.*

object deposito {

	var deposito = []

	// TODO acá la idea era recibir una lista, de uno o mas elementos
	method recibirMateriales(mercaderia) {
		deposito.add(mercaderia)
	}

	method llenarCamion() {
		deposito.forEach({ mercaderia =>
			camion.cargaleUnaCosa(mercaderia)
			deposito.remove(mercaderia)
		})
	}

	// TODO este método quedó exactamente igual al anterior
	// una forma de hacer que no se repita el código es mandar el transporte por parámetro
	method llenarMotoneta() {
		deposito.forEach({ mercaderia =>
			motoneta.cargaleUnaCosa(mercaderia)
			deposito.remove(mercaderia)
		})
	}

	method verStockDeDeposito() {
		return deposito
	}

}


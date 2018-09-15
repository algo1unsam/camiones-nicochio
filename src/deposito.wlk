import camiones.*
import motoneta.*
import mercaderia.*

object deposito {

	var deposito = []

	method recibirMateriales(mercaderia) {
		deposito.add(mercaderia)
	}

	method llenarCamion() {
		deposito.forEach({ mercaderia =>
			camion.cargaleUnaCosa(mercaderia)
			deposito.remove(mercaderia)
		})
	}
	
		method llenarMotoneta() {
		deposito.forEach({ mercaderia =>
			motoneta.cargaleUnaCosa(mercaderia)
			deposito.remove(mercaderia)
		})
	}
	
	method verStockDeDeposito(){
		return deposito
	}
	
	
}


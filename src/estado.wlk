class Estado {
	
	method estaDisponible() = false
	
	method estaEnViaje() = false
	
	method disponibiliizar(camion) {
		camion.estado(disponible)
	}
	
	method salirDeReparacion(camion) {
		throw new CambioDeEstadoInvalidoException(message = "Imposible salir de Reparación")
	}
	
	method reparar(camion) {
		throw new CambioDeEstadoInvalidoException(message = "Imposible entrar en Reparación")
	}
	
	method salirDeViaje(camion) {
		throw new CambioDeEstadoInvalidoException(message = "Imposible salir de Viaje")
	}
	
	method finalizarViaje(camion) {
		throw new CambioDeEstadoInvalidoException(message = "Imposible Finalizar Viaje")
	}
}

object disponible inherits Estado {

	override method estaDisponible() = true 	
	
	override method reparar(camion) {
		camion.estado(enReparacion)
	}
	
	override method salirDeViaje(camion) {
		camion.estado(enViaje)
	}	
	
}

object enViaje inherits Estado {
	
	method finalizarViaje(camion) {
		camion.estado(disponible)
	}
	
	method estaEnViaje() = true
}


object enReparacion inherits Estado {

	override method salirDeReparacion(camion) {
		self.disponibiliizar(camion)
	}	
	
}


class CambioDeEstadoInvalidoException inherits Exception {}









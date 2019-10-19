class Estado {
	
	method estaDisponible() = false
	
	method estaEnViaje() = false
	
	method disponibiliizar(camion) {
		camion.estado(disponible)
	}
	
	method salirDeReparacion(camion) {
		self.error("Imposible salir de Reparación")
	}
	
	method reparar(camion) {
		self.error("Imposible entrar en Reparación")
	}
	
	method salirDeViaje(camion) {
		self.error("Imposible salir de Viaje")
	}
	
	method finalizarViaje(camion) {
		self.error("Imposible Finalizar Viaje")
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
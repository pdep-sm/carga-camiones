import camion.*

class Deposito {
	
	const camiones = []
	
	
	method cargaEnViaje() = self.camionesEnViaje().sum{ camion => camion.cargaActual() }
	
	method camionesEnViaje() = camiones.filter{ camion => camion.estaEnViaje() }
	
	method camionesCon(elemento) = self.camionesCargando().filter{
		camion => camion.tiene(elemento)
	}
	
	method camionesCargando() = camiones.filter{ camion => 
		camion.estaCargando()
	}
	
}

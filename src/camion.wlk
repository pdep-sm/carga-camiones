class Camion {
	
	const cosos = []
	const cargaMaxima
	var property estado
	
	method cargar(coso) {
		if (self.puedeCargar(coso))
			self.agregarCoso(coso)
	}
	
	method agregarCoso(coso) {
		cosos.add(coso)
	}
	
	method puedeCargar(coso) =
		self.soportaPeso(coso) and estado.estaDisponible()
		
	method soportaPeso(coso) =
		self.pesoActual() + coso.peso() <= cargaMaxima
		
	method pesoActual() = cosos.sum{coso => coso.peso() }
	
	method estaListo() = estado.estaDisponible() and self.alcanzaPesoMinimo()
	
	method estaCargando() = estado.estaDisponible() and not(self.estaListo())
	
	method alcanzaPesoMinimo() = self.pesoActual() >= cargaMaxima * 0.75

	method estaEnViaje() = estado.estaEnViaje()
	
	method elementosCargados() = cosos.map{coso => coso.elemento()}.asSet()
	
	method tiene(elemento) = self.elementosCargados().contains(elemento)
	
	//Manejo de estados
	method salirDeReparacioon() {
		estado.salirDeReparacion(self)
	}
	
	method reparar() {
		estado.reparar(self)	
	}
	
	method salirDeViaje() {
		estado.salirDeViaje(self)
	}
	
	method finalizarViaje() {
		estado.finalizarViaje(self)
	}
	
}

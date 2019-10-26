class Bulto {
	const caja
	const cantidadCajas
	const pesoEstructura
	
	method peso() = caja.peso() * cantidadCajas + pesoEstructura
	
	method elemento() = caja.elemento()		
	
	method temperaturaMaxima() = caja.temperaturaMaxima()
}


class Caja {
	const property peso
	const property elemento
	const property temperaturaMaxima
	
}


class Bidon {
	const litros
	const densidad
	const property elemento
	const property temperaturaMaxima
	
	method peso() = litros * densidad
}

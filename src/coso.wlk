class Bulto {
	const caja
	const cantidadCajas
	const pesoEstructura
	
	method peso() = caja.peso() * cantidadCajas + pesoEstructura
	
	method elemento() = caja.elemento()		
	
}


class Caja {
	const property peso
	const property elemento
	
}


class Bidon {
	const litros
	const densidad
	const property elemento
	
	method peso() = litros * densidad
}

object trencito {
	
	var pasajeros = 0
	
	method pasajeros() = pasajeros
	
	method vaCargado() = pasajeros > 40
	
	method vaTranca() = pasajeros < 10
	
	method subir(cantPasajeros) { pasajeros += cantPasajeros }
	
	method bajar(cantPasajeros) { pasajeros = 0.max(pasajeros - cantPasajeros) }
	
	method vaciar() { pasajeros = 0 }
}

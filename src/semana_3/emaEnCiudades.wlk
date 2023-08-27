import ciudades.*

object ema {
	
	var ciudad = buenosAires 
	
	method gastosDiarios() = ciudad.costoHotel() + ciudad.costoTransporte() + 500
	
	method estaComoda() = ciudad.haySol() and ciudad.cantidadMuseos() > 5
	
	method mudarse(unaCiudad) { ciudad = unaCiudad }
	
}


object hornalla {
	
	var temperatura = 20
	
	method temperatura() = temperatura
	
	method prender() {
		temperatura = 180
	}
	
	method apagar() {
		temperatura = 20	
	}
	
	method consumo() {
		if (self.temperatura() == 180)
			return 4
		else
			return 0
	}
}

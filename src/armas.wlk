object ballesta {
	var cantidadFlechas = 10
	
	method nivelDePotencia() {
		return 4
	}
	
	method estaCargada() {
		return cantidadFlechas >= 1
	}
	
	method usarArma() {
		cantidadDeFlechas -= 1
	}
}


object jabalina {
	var estaCargada = true
	
	method nivelDePotencia() {
		return 30
	}
	
	method estaCargada() {
		return estaCargada
	}
	
	method usarArma() {
		estaCargada = false
	}
}
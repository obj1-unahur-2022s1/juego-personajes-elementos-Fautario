import cosas.*
import armas.*

object luisa {
	var personajeActivo
	
	method personajeActivo(personaje) {
		personajeActivo = personaje
	}
	
	method personajeActivo() {
		return personajeActivo
	}
	
	method aparecerElemento(elemento) {
		personajeActivo.encontrar(elemento)
	}
}


object floki {
	var arma = ballesta
	
	method encontrar(elemento) {
		if (arma.estaCargada()) {
			elemento.recibirAtaque(arma.nivelDePotencia())
			arma.usarArma()
		}
	}
	
	method cambiarArma(nuevaArma) {
		arma = nuevaArma
	}
}


object mario {
	var valorRecolectado = 0
	var ultimoElementoEncontrado

	method encontrar(elemento) {
		valorRecolectado += elemento.valorQueOtorga()
		elemento.recibirTrabajo()
		ultimoElementoEncontrado = elemento
	}
	
	method estaFeliz() {
		return valorRecolectado >= 50 || ultimoElementoEncontrado.altura() >= 10
	}
	
	method valorRecolectado() {
		return valorRecolectado
	}
}


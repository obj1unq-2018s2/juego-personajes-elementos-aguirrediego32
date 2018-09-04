object luisa {
	var personajeActivo = noHayPersonaje
}


object floki {
	var property arma = ballesta
	
	method encontrar(elemento) {
		
	    if (arma.estaCargada()) {
	        elemento.recibirAtaque(arma.potencia()) 
	        arma.registrarUso()
	    }
	}
}

object mario {
	var valorRecolectado = 0
	
	method encontrar(elemento) {
	    valorRecolectado += elemento.valorQueOtorga()
	    elemento.recibirTrabajo()
	    // ... acá hay que agregar una línea ...
	}
}


object noHayPersonaje {
	// no hace falta ponerle ningún método, es solamente para marcarle a Luisa que no tiene ningún personaje activo
}

object ballesta{
	var flechas = 0
	
	method estaCargada(){
		return self.siTieneFlechas()
	}
	method siTieneFlechas(){
	  return (flechas>0)
	}
	method potencia(){
		return 4
	}
}
// elementos que se encuentra//
	object castillo {
	var property  alto =20
	var property nivelDeDefensa = 150
	
	method recibirAtaque(valorPotencia){
		self.recibirAtaque(valorPotencia)
	}
}	

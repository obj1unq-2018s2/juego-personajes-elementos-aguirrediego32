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
	var ultimoElementoEncontrado
	method encontrar(elemento) {
	    valorRecolectado += elemento.valorQueOtorga()
	    elemento.recibirTrabajo()
	    ultimoElementoEncontrado = elemento
	   
	}
	method esFeliz(){
		return valorRecolectado>= 50
		 or ultimoElementoEncontrado.alto()>=10
	} 
	method valorRecolectado(){return valorRecolectado}
}


object noHayPersonaje {
	// no hace falta ponerle ningún método, es solamente para marcarle a Luisa que no tiene ningún personaje activo
}

object ballesta{
	var flechas = 10
	
	method estaCargada(){
		return self.siTieneFlechas()
	}
	method siTieneFlechas(){
	  return (flechas>0)
	}
	method cantidadFlechas(){
		return flechas
	}
	method potencia(){
		return 4
	}
	method registrarUso(){
		flechas -=1
	}
}
// elementos que se encuentra//
	object castillo {
	//const altura = 20 por que la altura no aumenta	
	var property  alto =20
	var property nivelDeDefensa = 150
	
	method recibirAtaque(potencia){
		nivelDeDefensa-= potencia
		}
	method valorQueOtorga() = nivelDeDefensa /5	
	
	method recibirTrabajo(){
		nivelDeDefensa = (nivelDeDefensa +20).min(200)
	}
}
object aurora {
	var property alto = 1
	var estaViva = True
	
	method recibirAtaque(potencia){
		if(potencia>= 10){
			estaViva = false
			}
		}
	
}	

		
	
	
	
	
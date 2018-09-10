object luisa {
	var personajeActivo 
	method miPersonajeEs() {return personajeActivo}
	method personajeElegido (personaje){ personajeActivo = personaje}
}

// personajes
object floki {
	var property arma = jabalina
	
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
// armas posibles que pueden usar los personajes
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
object jabalina{
	var lanzamiento = 1
	method siTieneUso() {
		return(lanzamiento > 0)
	}
	method estaCargada (){
		return self.siTieneUso()
	}
	method potencia() {return  30}
	method registrarUso(){
		lanzamiento -= 1
	}
}
// elementos que se encuentra//
	object castillo {
	var property  alto =20 	//const altura = 20 por que la altura no aumenta
	var property nivelDeDefensa = 150
	
	method recibirAtaque(potencia){
		nivelDeDefensa-= potencia
		}
	method valorQueOtorga() = nivelDeDefensa /5	// si tiene 200 otorga 40
	
	method recibirTrabajo(){
		nivelDeDefensa = (nivelDeDefensa +20).min(200)  // no se pasa de 200
	}
}
object aurora {
	var property alto = 1
	var estaViva = true
	
	method recibirAtaque(potencia){
		if(potencia>= 10){
			estaViva = false
			}
		}
	method valorQueOtorga() = 15
	method recibirTrabajo() {}	
}		
		
object tipa {
	var property alto = 8
	method recibirAtaque(potencia){}
	method valorQueOtorga() = 2 * alto
	method recibirTrabajo(){
		alto += 1
	}
		
	
}
		
	
	
	
	
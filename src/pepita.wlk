import ciudades.*
object cambio{
	var ave = pepita
	var cambio = 0
	method seleccionarAve() {cambio+=1
		if (cambio==1){ave = pepon}
		else if (cambio==2){ave = pipa}
		else if (cambio==3){
			ave = pepita
			cambio = 0
		}
	}
	method come(comida){
		ave.come(comida)
	}
	method estaFeliz() {
		return ave.energia().between(500, 1000)
	}
	method volaHacia(unaCiudad){
		ave.volaHacia(unaCiudad)
	}
	method energiaParaVolar(distancia) {
		ave.energiaParaVolar(distancia)
	}
	method arriba(){
		ave.arriba()
	}
	method abajo(){
		ave.abajo()
	}
	method derecha(){
		ave.derecha()
	}
	method izquierda(){
		ave.izquierda()
	}
	
}
object pepita {
	var property energia = 600
	var property ciudad = buenosAires
	var movimiento = 0
	var animacion = "animacion1.png"
	var x = 3
	var y = 3
//	var z = 3
//	var w = 3
//	var acum=0
//	var property posicion2 = game.at(z,w)
	var property posicion = game.at(x,y)
	method imagen() = animacion

	method come(comida) {
		energia += comida.energia()
	}
	
	method volaHacia(unaCiudad) {
		if (ciudad != unaCiudad) {
			self.move(unaCiudad.posicion())
			ciudad = unaCiudad
		}
	}

	method energiaParaVolar(distancia) = 15 + 5 * distancia
	
	method estaFeliz() {
		return self.energia().between(500, 1000)
	}

	method move(nuevaPosicion) {
		energia -= self.energiaParaVolar(posicion.distance(nuevaPosicion))
		self.posicion(nuevaPosicion)
	}
	method animacion() {
		movimiento += 1
		if (movimiento == 1) {animacion = "animacion2.png"}
		else if (movimiento == 2){animacion = "animacion3.png"}
		else if (movimiento == 3) {animacion = "animacion4.png"}
		else if (movimiento == 4) {animacion = "animacion5.png"}
		else if (movimiento == 5) {animacion = "animacion6.png"}
		else if (movimiento == 6) {animacion = "animacion7.png"}
		else if (movimiento == 7) {animacion = "animacion8.png"}
		else if (movimiento == 8) {
			animacion = "animacion1.png"
			movimiento = 0
		}
		return movimiento
	}
//	method animacionInactiva() {
//		movimiento += 1
//		if (movimiento == 1) {animacion = "animacioninactiva2.png"}
//		else if (movimiento == 2){animacion = "animacioninactiva3.png"}
//		else if (movimiento == 3) {animacion = "animacioninactiva4.png"}
//		else if (movimiento == 4) {animacion = "animacioninactiva5.png"}
//		else if (movimiento == 5) {animacion = "animacioninactiva6.png"}
//		else if (movimiento == 6) {animacion = "animacioninactiva7.png"}
//		else if (movimiento == 7) {animacion = "animacioninactiva8.png"}
//		else if (movimiento == 8) {animacion = "animacioninactiva9.png"}
//		else if (movimiento == 9) {animacion = "animacioninactiva10.png"}
//		else if (movimiento == 10) {animacion = "animacioninactiva11.png"}
//		else if (movimiento == 11) {animacion = "animacioninactiva12.png"}
//		else if (movimiento == 12) {animacion = "animacioninactiva13.png"}
//		else if (movimiento == 13) {animacion = "animacioninactiva14.png"}
//		else if (movimiento == 14) {animacion = "animacioninactiva15.png"}
//		else if (movimiento == 15) {animacion = "animacioninactiva16.png"}
//		else if (movimiento == 16) {animacion = "animacioninactiva17.png"}
//		else if (movimiento == 17) {animacion = "animacioninactiva18.png"}
//		else if (movimiento == 18) {animacion = "animacioninactiva19.png"}
//		else if (movimiento == 19) {animacion = "animacioninactiva20.png"}
//		else if (movimiento == 20) {animacion = "animacioninactiva21.png"}
//		else if (movimiento == 21) {animacion = "animacioninactiva22.png"}
//		else if (movimiento == 22) {animacion = "animacioninactiva23.png"}
//		else if (movimiento == 23) {animacion = "animacioninactiva24.png"}
//		else if (movimiento == 8) {
//			animacion = "animacioninactiva1.png"
//			movimiento = 0
//		}
//		return movimiento
//	}
	method arriba(){
//		w = y
		y +=1
		posicion = game.at(x,y)
	}
	method abajo(){
//		w = y
		y -=1
		posicion = game.at(x,y)
	}
	method derecha(){
//		z = x
		x +=1
		posicion = game.at(x,y)
	}
	method izquierda(){
//		z = x
		x -=1
		posicion = game.at(x,y)
	}
//	method movimientos() {
//		acum += 100
//		return posicion!=posicion2
//	}
//	method sinMovimientos() {
//		game.onTick(1+acum, {=>posicion2=posicion
//			acum = 0
//		})
//	}
}

object pepon {
	var property energia = 600
	var property ciudad = buenosAires
	var movimiento = 0
	var animacion = "animacionpepon1.png"
	var x = 9
	var y = 2
//	var z = 9
//	var w = 2
//	var acum=0
//	var property posicion2 = game.at(z,w)
	var property posicion = game.at(x,y)
	method imagen() = animacion

	method come(comida) {
		energia += comida.energia()
	}
	
	method volaHacia(unaCiudad) {
		if (ciudad != unaCiudad) {
			self.move(unaCiudad.posicion())
			ciudad = unaCiudad
		}
	}

	method energiaParaVolar(distancia) = 15 + 5 * distancia
	
	method estaFeliz() {
		return self.energia().between(500, 1000)
	}

	method move(nuevaPosicion) {
		energia -= self.energiaParaVolar(posicion.distance(nuevaPosicion))
		self.posicion(nuevaPosicion)
	}
	method animacion() {
		movimiento += 1
		if (movimiento == 1) {animacion = "animacionpepon2.png"}
		else if (movimiento == 2){animacion = "animacionpepon3.png"}
		else if (movimiento == 3) {animacion = "animacionpepon4.png"}
		else if (movimiento == 4) {animacion = "animacionpepon5.png"}
		else if (movimiento == 5) {animacion = "animacionpepon6.png"}
		else if (movimiento == 6) {animacion = "animacionpepon7.png"}
		else if (movimiento == 7) {animacion = "animacionpepon8.png"}
		else if (movimiento == 8) {
			animacion = "animacionpepon1.png"
			movimiento = 0
		}
		return movimiento
	}
//	method animacionInactiva() {
//		movimiento += 1
//		if (movimiento == 1) {animacion = "animacionpeponinactivo2.png"}
//		else if (movimiento == 2){animacion = "animacionpeponinactivo3.png"}
//		else if (movimiento == 3) {animacion = "animacionpeponinactivo4.png"}
//		else if (movimiento == 4) {animacion = "animacionpeponinactivo5.png"}
//		else if (movimiento == 5) {animacion = "animacionpeponinactivo6.png"}
//		else if (movimiento == 6) {animacion = "animacionpeponinactivo7.png"}
//		else if (movimiento == 7) {animacion = "animacionpeponinactivo8.png"}
//		else if (movimiento == 8) {animacion = "animacionpeponinactivo9.png"}
//		else if (movimiento == 9) {animacion = "animacionpeponinactivo10.png"}
//		else if (movimiento == 10) {animacion = "animacionpeponinactivo11.png"}
//		else if (movimiento == 11) {animacion = "animacionpeponinactivo12.png"}
//		else if (movimiento == 12) {animacion = "animacionpeponinactivo13.png"}
//		else if (movimiento == 13) {animacion = "animacionpeponinactivo14.png"}
//		else if (movimiento == 14) {animacion = "animacionpeponinactivo15.png"}
//		else if (movimiento == 15) {animacion = "animacionpeponinactivo16.png"}
//		else if (movimiento == 16) {animacion = "animacionpeponinactivo17.png"}
//		else if (movimiento == 17) {animacion = "animacionpeponinactivo18.png"}
//		else if (movimiento == 18) {animacion = "animacionpeponinactivo19.png"}
//		else if (movimiento == 19) {animacion = "animacionpeponinactivo20.png"}
//		else if (movimiento == 20) {animacion = "animacionpeponinactivo21.png"}
//		else if (movimiento == 21) {animacion = "animacionpeponinactivo22.png"}
//		else if (movimiento == 22) {animacion = "animacionpeponinactivo23.png"}
//		else if (movimiento == 23) {animacion = "animacionpeponinactivo24.png"} hay que optimizar xD
//		else if (movimiento == 8) {
//			animacion = "animacionpeponinactivo1.png"
//			movimiento = 0
//		}
//		return movimiento
//	}
	method arriba(){
//		w=y
		y +=1
		posicion = game.at(x,y)
	}
	method abajo(){
//		w=y
		y -=1
		posicion = game.at(x,y)
	}
	method derecha(){
//		z=y
		x +=1
		posicion = game.at(x,y)
	}
	method izquierda(){
//		z=y
		x -=1
		posicion = game.at(x,y)
	}
//	method movimientos() {
//		acum += 100
//		return posicion!=posicion2
//	}
//	method sinMovimientos() {
//		game.onTick(1+acum, {=>posicion2=posicion
//			acum = 0})
//	}
}

object pipa {
	var property energia = 600
	var property ciudad = buenosAires
	var movimiento = 0
	var animacion = "animacionpipa1.png"
	var x = 7
	var y = 8
//	var z = 7
//	var w = 8
//	var acum=0
//	var property posicion2 = game.at(z,w)
	var property posicion = game.at(x,y)
	method imagen() = animacion

	method come(comida) {
		energia += comida.energia()
	}
	
	method volaHacia(unaCiudad) {
		if (ciudad != unaCiudad) {
			self.move(unaCiudad.posicion())
			ciudad = unaCiudad
		}
	}

	method energiaParaVolar(distancia) = 15 + 5 * distancia
	
	method estaFeliz() {
		return self.energia().between(500, 1000)
	}

	method move(nuevaPosicion) {
		energia -= self.energiaParaVolar(posicion.distance(nuevaPosicion))
		self.posicion(nuevaPosicion)
	}
	method animacion() {
		movimiento += 1
		if (movimiento == 1) {animacion = "animacionpipa2.png"}
		else if (movimiento == 2){animacion = "animacionpipa3.png"}
		else if (movimiento == 3) {animacion = "animacionpipa4.png"}
		else if (movimiento == 4) {animacion = "animacionpipa5.png"}
		else if (movimiento == 5) {animacion = "animacionpipa6.png"}
		else if (movimiento == 6) {animacion = "animacionpipa7.png"}
		else if (movimiento == 7) {animacion = "animacionpipa8.png"}
		else if (movimiento == 8) {
			animacion = "animacionpipa1.png"
			movimiento = 0
		}
		return movimiento
	}
//	method animacionInactiva() {
//		movimiento += 1
//		if (movimiento == 1) {animacion = "animacionpipainactiva2.png"}
//		else if (movimiento == 2){animacion = "animacionpipainactiva3.png"}
//		else if (movimiento == 3) {animacion = "animacionpipainactiva4.png"}
//		else if (movimiento == 4) {animacion = "animacionpipainactiva5.png"}
//		else if (movimiento == 5) {animacion = "animacionpipainactiva6.png"}
//		else if (movimiento == 6) {animacion = "animacionpipainactiva7.png"}
//		else if (movimiento == 7) {animacion = "animacionpipainactiva8.png"}
//		else if (movimiento == 8) {animacion = "animacionpipainactiva9.png"}
//		else if (movimiento == 9) {animacion = "animacionpipainactiva10.png"}
//		else if (movimiento == 10) {animacion = "animacionpipainactiva11.png"}
//		else if (movimiento == 11) {animacion = "animacionpipainactiva12.png"}
//		else if (movimiento == 12) {animacion = "animacionpipainactiva13.png"}
//		else if (movimiento == 13) {animacion = "animacionpipainactiva14.png"}
//		else if (movimiento == 14) {animacion = "animacionpipainactiva15.png"}
//		else if (movimiento == 15) {animacion = "animacionpipainactiva16.png"}
//		else if (movimiento == 16) {animacion = "animacionpipainactiva17.png"}
//		else if (movimiento == 17) {animacion = "animacionpipainactiva18.png"}
//		else if (movimiento == 18) {animacion = "animacionpipainactiva19.png"}
//		else if (movimiento == 19) {animacion = "animacionpipainactiva20.png"}
//		else if (movimiento == 20) {animacion = "animacionpipainactiva21.png"}
//		else if (movimiento == 21) {animacion = "animacionpipainactiva22.png"}
//		else if (movimiento == 22) {animacion = "animacionpipainactiva23.png"}
//		else if (movimiento == 23) {animacion = "animacionpipainactiva24.png"}
//		else if (movimiento == 8) {
//			animacion = "animacionpipainactiva1.png"
//			movimiento = 0
//		}
//		return movimiento
//	}
	method arriba(){
//		w=y
		y +=1
		posicion = game.at(x,y)
	}
	method abajo(){
//		w=y
		y -=1
		posicion = game.at(x,y)
	}
	method derecha(){
//		z=x
		x +=1
		posicion = game.at(x,y)
	}
	method izquierda(){
//		z=x
		x -=1
		posicion = game.at(x,y)
	}
//	method movimientos() {
//		acum += 100
//		return posicion!=posicion2
//	}
//	method sinMovimientos() {
//		game.onTick(1+acum, {=>posicion2=posicion
//			acum = 0})
//	}
}
object roque {
	var comida = null
	var animacion = "animacionroque1.png"
	var movimiento = 0
	var x=9
	var y=9
	var property posicion = game.at(x,y)
	method imagen() = animacion
	method almacenarComida(comidas){
		comida=comidas
	}
	method alimentarAve(ave){
		ave.come(comida)
		comida = null
	}
	method animacion(){
		if (comida==null){
			movimiento += 1
			if (movimiento == 1) {animacion = "animacionroque2.png"}
			else if (movimiento == 2){animacion = "animacionroque3.png"}
			else if (movimiento == 3) {animacion = "animacionroque4.png"}
			else if (movimiento == 4) {animacion = "animacionroque5.png"}
			else if (movimiento == 5) {animacion = "animacionroque6.png"}
			else if (movimiento == 6) {animacion = "animacionroque7.png"}
			else if (movimiento == 7) {animacion = "animacionroque8.png"}
			else if (movimiento == 8) {
			animacion = "animacionroque1.png"
			movimiento = 0}
			}else {
				movimiento+=1
				if (movimiento == 1) {animacion = "animacionroquecomida2.png"}
				else if (movimiento == 2){animacion = "animacionroquecomida3.png"}
				else if (movimiento == 3) {animacion = "animacionroquecomida4.png"}
				else if (movimiento == 4) {animacion = "animacionroquecomida5.png"}
				else if (movimiento == 5) {animacion = "animacionroquecomida6.png"}
				else if (movimiento == 6) {animacion = "animacionroquecomida7.png"}
				else if (movimiento == 7) {animacion = "animacionroquecomida8.png"}
				else if (movimiento == 8) {
				animacion = "animacionroquecomida1.png"
				movimiento = 0}
			}
			return movimiento
	}
	
	method arriba(){
		y +=1
		posicion = game.at(x,y)
	}
	method abajo(){
		y -=1
		posicion = game.at(x,y)
	}
	method derecha(){
		x +=1
		posicion = game.at(x,y)
	}
	method izquierda(){
		x -=1
		posicion = game.at(x,y)
	}
	
}

object luz{
	var imagen = "luzRoja.png"
	method imagen() = imagen
	method funcion() {
		if (pepita.estaFeliz() and pepon.estaFeliz() and pipa.estaFeliz())
		{imagen = "luzVerde.png"}
		else {imagen = "luzRoja.png"}
	}
}
class Corsa {
	var property capacidad 
	var property velocidadMaxima = 0
	var property color 
	var property peso
	var property tieneGas=false
	
}

var corsa1 = new Corsa()

	corsa1.color("rojo")
	
}

class Corsa {
	var property color
	
	method capacidad() {return 4}
	method velocidadMaxima(){return 150}
	method peso() {return 1300}
}

class Kwid {
	var property  tanqueAdicional = false
	const color = "azul"
	
	method capcidad() {return if(not tanqueAdicional){4} else {3}}
	method velocidadMaxima(){ if(not tanqueAdicional) {120} else {150}}
	method peso() {return if (not tanqueAdicional) {1200} else {1350}}
	
}

object trafic{
	var property interior = interiorComodo
	var property motor = motorPulenta
	const color = "blanco"
	const pesoBase = 4000
	method capacidad() {return interior.capacidad()}
	method velocidadMaxima() {return motor.velocidadMaxima()}
	method peso(){return pesoBase + interior.peso() + motor.peso()}
	method color() {return color}
} 

object motorPulenta{
	method peso(){return 800}
	method velocidadMaxima() {return 130}
}

object motorBataton{
	method peso() {return 500}
	method velocidadMaxima() {return 80}
}

object interiorComodo(){
	method capacidad() {return 5}
	method peso() {return 700}
}

object interiorPopular(){
	method capacidad() {return 12}
	method peso(){return 1000}
}
















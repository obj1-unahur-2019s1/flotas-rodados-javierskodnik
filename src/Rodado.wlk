class Rodado {
	var property capacidad = 0
	var property velocidadMaxima = 0
	var property color 
	var property peso
	var property tieneGas=false
	
	method capacidad(unValor){
		capacidad = unValor
		if (tieneGas) capacidad-- //el -- le resta 1 a capacidad
	}
	
	method capacidad(unValor){
		return capacidad
	}
}




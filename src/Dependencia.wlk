import Rodado.*

class Dependencia{
	const flota = #{}
	var property empleados = 0
	
	method agregarFlota(rodado){ flota.add(rodado) }
	
	method quitarDeFlota(rodado){ flota.remove(rodado)}
	
	method pesoTotalFlota() = flota.sum {r=> r.peso()}
	
	method estaBienEquipada(){
		return flota.size() >= 3 and flota.all {r => r.velocidadMaxima()>=100}
	}
	
	method capacidadTotalEnColor(color){
		return flota
		.filter {r => r.color() == color}
		.sum { r => r.capacidad()}
	}
	
	method colorDeRodadoMasRapido(){return flota.max { r => r.velocidadMaxima()}.color()}
	
	method capacidadFaltante(){ return empleados - flota.sum {r => r.capacidad()}}
	
	method esGrande(){return empleados >= 40 and flota.size() >=5}
}


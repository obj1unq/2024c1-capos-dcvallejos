import artefactos.*
import castillo.*

object rolando{
	
	var property capacidad = 2
	
	const property artefactos = #{}
	
	var property historialArtefactos = []
	
	var hogar = castilloDePiedra
	
	method agarrar(artefacto){
		if (self.puedeAgregar()){
			artefactos.add(artefacto)
		}
		self.agregarAHistorial(artefacto)
	}
	
	method agregarAHistorial(artefacto){
		self.historialArtefactos().add(artefacto)
	}
	
	method puedeAgregar() {
		return artefactos.size() < capacidad
	}
	
	method irAlHogar(){
		self.guardarArtefactosEnHogar()
		self.liberarEspacio()
	}
	
	method guardarArtefactosEnHogar(){
		hogar.guardarTodosLosArtefactos(artefactos)		
	}
	
	method liberarEspacio(){
		artefactos.clear()
	}
	
	// BUSQUEDA INDIVIDUAL
	method posee(artefacto){
		return self.todasLasPosesiones().contains(artefacto)
	}
	
	// TOTAL DE OBJETOS
	method todasLasPosesiones(){
		return artefactos.union(hogar.baul())		
	}
	
	
}


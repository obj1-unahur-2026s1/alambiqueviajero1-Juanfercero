object luke {
  var cantidadDeLugaresVisitados=0
  var vehiculo = alambiqueVeloz
  var recuerdoTipico = paris.recuerdoTipico()

  method cantidadDeLugaresVisitados()=cantidadDeLugaresVisitados
  method ultimoRecuerdo() = recuerdoTipico
  
  method vehiculo() = vehiculo

  method cambiarVehiculo(nuevoVehiculo) {
    vehiculo = nuevoVehiculo
  }
  

  method viajarHasta(lugar) {
    if (lugar.requisito()){
        cantidadDeLugaresVisitados += 1
        recuerdoTipico = lugar.recuerdoTipico()
        vehiculo.perderCombustible()
    }
  }

  
}

object paris {
    const combustibleParaLlegar = 20
    method combustibleParaLlegar() = combustibleParaLlegar

    method requisito() = luke.vehiculo().combustible() > combustibleParaLlegar

    method recuerdoTipico()="llavero de la torre eiffel"
}

object buenosAires{
    var presidente = presidente1
    
    method recuerdoTipico() = presidente.recuerdo()
    method requisito() = luke.vehiculo().esRapido()

    method cambioDePresidente(nuevoPresidente) {
      presidente = nuevoPresidente
    }
}

object presidente1 {
  method recuerdo() = "MateConYerba"
}

object presidente2 {
  method recuerdo() = "MateSinYerba"
}

object bagdad {
  var recuerdoActual = "bidón con petróleo crudo"
  method recuerdoTipico() = recuerdoActual
  method asignarRecuerdo(nuevoRecuerdo) {
    recuerdoActual = nuevoRecuerdo
  }
  method requisito() = true
}

object lasVegas {
    var lugarDeHomenaje = paris
  method recuerdoTipico() = lugarDeHomenaje.recuerdoTipico()
  method cambiarLugarHomenajeado(lugar) {
    lugarDeHomenaje = lugar
  }
  method requisito() = lugarDeHomenaje.requisito()
}

object chihuahua{
    method recuerdoTipico() = "chihuahua"
    method requisito() = true
}






object alambiqueVeloz {
  var combustible = 20 

  method combustible() = combustible
  method perderCombustible() {
    combustible -= 10
  }
  method esRapido() = true
}

object superChatarraEspecial {
  var combustible = 20 
  var municion = 30
  method combustible() = combustible
  method perderCombustible() {
    combustible -= 10
  }
  method esRapido() = false
  method disparar(cant) {
    municion -= cant
  }
}

object antiguallaBlindada {
  var combustible = 40 
  var cantGansters = 3
  var velocidad = 25
  method combustible() = combustible
  method perderCombustible() {
    combustible -= 10
  }
  method sumarGanster() {
    cantGansters += 1
    velocidad -= 5.max(0)
  }
  method esRapido() = velocidad > 10
}

object superConvertible {
  var combustible = 20 
  var vehiculoConvertido = antiguallaBlindada
  method combustible() = combustible
  method perderCombustible() {
    combustible -= 10
  }
  method esRapido() = vehiculoConvertido.esRapido()
  method cambiarVehiculo(nuevoVehiculo) {
    vehiculoConvertido = nuevoVehiculo
  }
}

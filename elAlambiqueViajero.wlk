object luke {
  var cantidadDeLugaresVisitados=0
  var vehiculo = alambiqueVeloz
  var recuerdoTipico = paris.recuerdoTipico()

  method cantidadDeLugaresVisitados()=cantidadDeLugaresVisitados
  
  method cambiarVehiculo(nuevoVehiculo) {
    vehiculo = nuevoVehiculo
  }

  method viajarHasta(lugar) {
    recuerdoTipico = lugar.recuerdoTipico()
    vehiculo.perderCombustible()
  }
  
}

object paris {
   method recuerdoTipico()="llavero de la torre eiffel"
   method restriccionDellVehiculo() {
     
   }

}

object mexico{
 
}
object buenosAires{
    var presidente = "Pepito"
    method recuerdoTipico(){
        if (presidente == "Pepito"){
            return "MateConYerba"
        }
        else {
            return "MateSinYerba"
        }
    }
}

object bagdad {
  var recuerdoActual = "bidón con petróleo crudo"
  method recuerdoTipico() = recuerdoActual
  method asignarRecuerdo(nuevoRecuerdo) {
    recuerdoActual = nuevoRecuerdo
  }
}

object lasVegas {
    var homenajeA = paris
  method recuerdoTipico() = homenajeA.recuerdoTipico()
  method cambiarLugarHomenajeado(lugar) {
    homenajeA = lugar
  }
}


object alambiqueVeloz {
  var combustible = 20 
  method perderCombustible() {
    combustible -= 10
  }
}

object superChatarraEspecial {
  var combustible = 20 
  var municion = 30
  method perderCombustible() {
    combustible -= 10
  }
  method disparar(cant) {
    municion -= cant
  }
}

object antiguallaBlindada {
  var combustible = 20 
  var cantGansters = 3
  var velocidad = 25.max(0)
  method perderCombustible() {
    combustible -= 10
  }
  method sumarGanster() {
    cantGansters += 1
    velocidad -= 5
  }
}

object superConvertible {
  var combustible = 20 
  var vehiculoConvertido = antiguallaBlindada
  method perderCombustible() {
    combustible -= 10
  }
}

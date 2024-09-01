object manic { // Well Know Object (WKO)
  // Estado
  var estrellas = 0
  var globos = 0

  // Comentario de una linea

  /*
    Comentario multi linea
  */
  // Getter
  method estrellas() = estrellas
  method globos() = globos 

  // También un getter
  // method estrellas() {
  //   return estrellas
  // }

  // Comportamiento
  method encontrarEstrellas() {
    // estrellas = estrellas + 8
    estrellas += 8
  }

  method regalarEstrellas() {
    estrellas = 0.max (estrellas -1)
  }

  // Setter
  method estrellas(unaCantidad) {
    estrellas = unaCantidad
  }
  method comprarGlobos(unaCantidad) {
    globos += unaCantidad
  }

  method tenerTodoListo() =  estrellas >= 4

  method tenerSuficientesGlobos() = globos > 50
}

// Interfaz: Conjunto de mensajes que entiende un objeto.
// Interfaz de manic:
// encontrarEstrellas()
// regalarEstrellas()
// estrellas()
// estrellas(unaCantidad)
// tenerTodoListo()
// globos()
// tenerSuficientesGlobos()

object fiesta {
  var property quienOrganiza = manic

  method cambiarOrganizador(organizador) {
    quienOrganiza = organizador
  }

  method averiguarSiEstaPreparada() = 
  quienOrganiza.tenerTodoListo() && quienOrganiza.tenerSuficientesGlobos()
}

object chuy {
  var globos = 0
  method globos() = globos

   method comprarGlobos(unaCantidad) {
    globos += unaCantidad
  } 

  method estarEntrenando() = true 
  method tenerTodoListo() = true
  method tenerSuficientesGlobos() = globos > 50
}

object capy {
  var latas = 0
  var globos = 0

  method globos() = globos
  method latas() = latas 

  method comprarGlobos(unaCantidad) {
    globos += unaCantidad
  } 

  method recoletarLatas() {
    latas += 1
  }
  method reciclarLatas(){
    latas = 0.max (latas -5)
  }
  method tenerTodoListo() = latas.even()
  method tenerSuficientesGlobos() = globos > 50
}


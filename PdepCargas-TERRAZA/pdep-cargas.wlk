object verdurin { //vehiculo de Verduras
  var cajonesDeVerduras = 10
  const pesoDeLosCajones = 50 //peso por Cajon Kgs
  var property kilometraje = 700000

  method cajonesDeVerduras(unaCantidad) {
    cajonesDeVerduras = unaCantidad
  }
  
  method velocidadMaxima() = 80 - self.pesoDeCarga().div(500) 

  method pesoDeCarga() = cajonesDeVerduras * pesoDeLosCajones 
}

object scanion5000 { //vehiculo de Liquido
  const capacidadCombustible = 5000 //Lts
  const velocidadMaxima = 140
  var property densidad = 1

  method velocidadMaxima() = velocidadMaxima

  method pesoDeCarga() = densidad * capacidadCombustible 
}

object cerealitas { //vehiculo de Cerealero
  var deterioro = 0
  var property pesoDeCarga = 0

  method deterioro(unaCantidad) {
    deterioro = unaCantidad
  }

  method velocidadMaxima() {
    if (deterioro < 10){
      return 40
    } else{
      return 60 - deterioro
    }
  } 
}
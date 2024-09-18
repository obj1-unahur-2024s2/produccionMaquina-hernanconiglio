object maquina {
  const property registro = []

  method registrarProduccion(unValor) {
    registro.add(unValor)
  }
  method registrarVariosValores(unaLista) {
    registro.addAll(unaLista)
  }
  method eliminarUnValor(unValor) {
    registro.remove(unValor)
  }

  method algunDiaSeProdujo(cantidad) = registro.contains(cantidad)
  method maximoValorDeProduccion() = registro.max()
  method valoresDeProduccionPares() = registro.filter({e => e.even()})
  method produccionEsAcotada(n1,n2) = registro.all({r => r.between(n1,n2)})
  method produccionesSuperioresA(cuanto) = registro.filter({e => e > cuanto})
  method produccionesSumando(n) = registro.map({e => e + n})
  method totalProducido() = registro.sum()
  method ultimoValorDeProduccion() = registro.last()
  method cantidadProduccionesMayoresALaPrimera() = registro.count({e => e > registro.first()})

}
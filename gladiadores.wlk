import grupo.*
class Gladiador{
  var vida = 100

  method vida() = vida

  method atacar(unGladiador){ unGladiador.recibirAtaque(self) }
  method recibirAtaque(unGladiador){ vida = 0.max(vida - unGladiador.poderDelAtaque() - self.defensa()) }
  method defensa() 

  method pelear(unGladiador) {
    self.atacar(unGladiador)
    unGladiador.atacar(self)
  }
  method curar(){ vida = 100 }
}

class Mirmillones inherits Gladiador{
  var arma
  var armadura
  var fuerza

  method fuerza() = fuerza
  method destreza() = 15

  method cambiarArmadura(nuevaArmadura) { armadura = nuevaArmadura }
  method cambiarFuerza(unaCantidad){ fuerza = unaCantidad }
  method cambiarArma(unArma){ arma = unArma }

  method poderDeAtaque() = fuerza + arma.valorDeAtaque()
  override method defensa() = armadura.puntosDeArmadura(self) + self.destreza()

  method armarGrupo(unGladiador) = new Grupo(nombre = "Mirmillolandia", miembros=#{self, unGladiador})
}

class Dimachaerus inherits Gladiador{
  const armas = []
  var destreza

  method fuerza() = 10
  method destreza() = destreza
  method poderDeAtaque() = self.fuerza() + armas.sum({a => a.valorDeAtaque()})
  override method atacar(unGladiador){
    super(unGladiador);
    destreza += 1
  }
  override method defensa() = destreza / 2

  method agregarArma(unArma){ armas.add(unArma) }
  method quitarArma(unArma){ armas.remove(unArma) }

  method armarGrupoCon(unGladiador) = new Grupo(nombre = "D-"+(self.poderDeAtaque() + unGladiador.poderDeAtaque()).toString(), miembros=#{self, unGladiador})
}
class Casco{
  method puntosDeArmadura(unGladiador) = 10
}

class Escudo{
  method puntosDeArmadura(unGladiador) = 5 + unGladiador.destreza() * 0.1
}
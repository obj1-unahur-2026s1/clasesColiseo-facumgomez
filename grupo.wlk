class Grupo{
  const nombre 
  const miembros = #{}
  var cantidadDePeleas = 0

  method nombre() = nombre
  method miembros() = miembros
  method cantidadDePeleas() = cantidadDePeleas 

  method agregarMiebro(unGladiador) { miembros.add(unGladiador) }
  method quitarMiebro(unGladiador) { miembros.remove(unGladiador) }

  method elegirCampeon() = miembros.filter({ m => m.vida() > 0 }).max({ m => m.poderDeAtaque()})
  method combatirCon(otroGrupo){
    3.times({ i => self.elegirCampeon().pelearCon(otroGrupo.elegirCampeon()) })
    cantidadDePeleas += 1
  }
}
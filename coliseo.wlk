object coliseo {
  const grupos = #{}

  method grupos() = grupos
  method agregarUnGrupo(grupo) { grupos.add(grupo) }
  method eliminarUnGrupo(grupo) { grupos.remove(grupo) }
  method curarUnGrupo(grupo) { grupo.miembros().forEach({e => e.curar()}) }
  
  method organizarCombate(unGrupo, otroGrupo){ unGrupo.combatirCon(otroGrupo) }
  method combatirGrupoContraGladiador(grupo, gladiador) { grupo.elegirCampeon().pelear(gladiador) }

  method curarUnGladiador(gladiador) { gladiador.curar() }
}
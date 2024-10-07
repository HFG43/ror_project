User: {
    Jugador: {
        posición,
        fecha de nacimiento,
        lesiones,
        colegio
    }
    Padre,
    Entrenador {
        es además Padre?school:
    }
    Coordinador {
        es además Padre?
    },
    administrador {
        bloqueado, para uno/dos que sea coordinador
    }
},
Equipo/Club,
Entrenamiento {
    estuvo presente?
},
Partidos/Fixture anual {
    quién jugo por fecha
    resultados
    quién hizo los tantos
}
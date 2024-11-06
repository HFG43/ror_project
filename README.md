REFERENCIA DE JWT: https://sdrmike.medium.com/rails-7-api-only-app-with-devise-and-jwt-for-authentication-1397211fb97c

TODO: padres, entrenadores, coordinador, administrador
Revisar has_one trhough para Club, por team
https://medium.com/nerd-for-tech/rails-association-part-1-865c1373fb22
Agregar Cache: memcache?

Use of serialoizer: https://medium.com/@ryan.w.horowitz/a-comprehensive-guide-on-how-to-use-rails-serializer-f69f01017cd5


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
(define (problem roverPro32) (:domain roverTo32)
    (:objects
        L1 L2 L3 - lugar
        R1 R2 - rover
        P1 - persona
        S1 - suministro
        Alta Media Baja - prioridad
    )

    (:init
        (camino L1 L2)
        (camino L2 L1)
        (camino L2 L3)
        (camino L3 L2)
        (en R1 L3)
        (en P1 L1)
        (en S1 L1)
        (en R2 L3)

        (= (combustible R1) 3)
        (= (combustible R2) 8)
        (= (combustible_total) 11)
        (= (libre R1) 2)
        (= (libre R2) 2)
        (= (valor_prioridad Baja) 1)
        (= (valor_prioridad Media) 2)
        (= (valor_prioridad Alta) 3)

        (= (peticion_persona L1 Baja) 0)
        (= (peticion_persona L1 Media) 0)
        (= (peticion_persona L1 Alta) 0)

        (= (peticion_persona L2 Baja) 0)
        (= (peticion_persona L2 Media) 1)
        (= (peticion_persona L2 Alta) 0)

        (= (peticion_persona L3 Baja) 1)
        (= (peticion_persona L3 Media) 1)
        (= (peticion_persona L3 Alta) 1)

        (= (peticion_suministro L1 Baja) 1)
        (= (peticion_suministro L1 Media) 0)
        (= (peticion_suministro L1 Alta) 0)

        (= (peticion_suministro L2 Baja) 0)
        (= (peticion_suministro L2 Media) 1)
        (= (peticion_suministro L2 Alta) 0)

        (= (peticion_suministro L3 Baja) 2)
        (= (peticion_suministro L3 Media) 0)
        (= (peticion_suministro L3 Alta) 0)

        (= (recursos_restantes) 2)
        (= (suma_prioridades) 0)
        (= (num_max_prioridad) 3)
    )

    (:goal (or
    (forall (?l - lugar) (forall (?p - prioridad) (and (= (peticion_persona ?l ?p) 0) (= (peticion_suministro ?l ?p) 0))))
    (= (recursos_restantes) 0)))

    (:metric maximize (+ (* (combustible_total) 2) (* (suma_prioridades) 1)))
)
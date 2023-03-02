(define (problem roverPro2) (:domain roverTo2)
(:objects 
    L1 L2 L3 - lugar
    R1 R2 - rover
    P1 - persona
    S1 - suministro
)

(:init
    (camino L1 L2)
    (camino L2 L1)
    (camino L2 L3)
    (camino L3 L2)
    (en R1 L3)
    (en P1 L1)
    (en S1 L2)
    (en R2 L3)

    (= (combustible R1) 8)
    (= (combustible R2) 1)
    (= (libre R1) 2)
    (= (libre R2) 2)
    (= (peticion_persona L1) 0)
    (= (peticion_persona L2) 1)
    (= (peticion_persona L3) 0)
    (= (peticion_suministro L1) 0)
    (= (peticion_suministro L2) 0)
    (= (peticion_suministro L3) 1)
    (= (recursos_restantes) 2)
)

(:goal (or
    (forall (?l - lugar) (and (= (peticion_persona ?l) 0) (= (peticion_suministro ?l) 0)))
    (= (recursos_restantes) 0)
))
)

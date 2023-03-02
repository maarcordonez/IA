(define (problem roverPro0_1) (:domain roverTo0)
(:objects
L0 L1 L2  - lugar
R0 R1  - rover
P0 P1  - persona
S0  - suministro
)
(:init
(camino L0, L1)
(camino L1, L0)
(camino L1, L2)
(camino L2, L1)
(en R0, L0)
(en R1, L0)
(en P0, L0)
(en P1, L2)
(en S0, L0)
(= (peticion_persona L0) 4)
(= (peticion_persona L1) 2)
(= (peticion_persona L2) 2)
(= (peticion_suministro L0) 2)
(= (peticion_suministro L1) 0)
(= (peticion_suministro L2) 1)
(= (recursos_restantes) 3)
)
(:goal (or
    (forall (?l - lugar) (and (= (peticion_persona ?l) 0) (= (peticion_suministro ?l) 0)))
    (= (recursos_restantes) 0)
)))

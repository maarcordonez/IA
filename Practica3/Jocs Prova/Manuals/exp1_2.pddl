(define (problem roverPro22) (:domain roverTo22)
(:objects
L0 L1 L2 L3 - lugar
R0 R1  - rover
P0 - persona
)
(:init
(camino L0, L1)
(camino L1, L0)
(camino L1, L2)
(camino L2, L1)
(camino L3, L2)
(camino L2, L3)
(en R0, L0)
(en R1, L3)
(en P0, L1)
(= (libre R0) 2)
(= (libre R1) 2)
(= (combustible R0) 2)
(= (combustible R1) 2)
(= (combustible_total) 4)
(= (peticion_persona L0) 0)
(= (peticion_persona L1) 0)
(= (peticion_persona L2) 0)
(= (peticion_persona L3) 1)
(= (peticion_suministro L0) 0)
(= (peticion_suministro L1) 0)
(= (peticion_suministro L2) 0)
(= (peticion_suministro L3) 0)
(= (recursos_restantes) 1)
)
(:goal (or
    (forall (?l - lugar) (and (= (peticion_persona ?l) 0) (= (peticion_suministro ?l) 0)))
    (= (recursos_restantes) 0)
))
(:metric maximize (combustible_total)))

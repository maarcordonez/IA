(define (problem roverPro0_0) (:domain roverTo0)
(:objects
L0 L1 L2 L3 L4 L5 L6 L7 L8 L9 L10 L11 L12 L13 L14  - lugar
R0 R1  - rover
P0 P1 P2  - persona
S0  - suministro
)
(:init
(camino L0, L1)
(camino L1, L0)
(camino L1, L2)
(camino L2, L1)
(camino L2, L3)
(camino L3, L2)
(camino L3, L4)
(camino L4, L3)
(camino L4, L5)
(camino L5, L4)
(camino L5, L6)
(camino L6, L5)
(camino L6, L7)
(camino L7, L6)
(camino L7, L8)
(camino L8, L7)
(camino L8, L9)
(camino L9, L8)
(camino L9, L10)
(camino L10, L9)
(camino L10, L11)
(camino L11, L10)
(camino L11, L12)
(camino L12, L11)
(camino L12, L13)
(camino L13, L12)
(camino L13, L14)
(camino L14, L13)
(camino L7, L12)
(camino L12, L7)
(camino L14, L1)
(camino L1, L14)
(camino L9, L12)
(camino L12, L9)
(camino L10, L0)
(camino L0, L10)
(camino L1, L11)
(camino L11, L1)
(camino L12, L1)
(camino L1, L12)
(camino L3, L5)
(camino L5, L3)
(camino L12, L0)
(camino L0, L12)
(camino L5, L0)
(camino L0, L5)
(camino L7, L10)
(camino L10, L7)
(camino L7, L9)
(camino L9, L7)
(camino L11, L2)
(camino L2, L11)
(camino L13, L1)
(camino L1, L13)
(camino L8, L0)
(camino L0, L8)
(camino L14, L7)
(camino L7, L14)
(camino L1, L3)
(camino L3, L1)
(camino L8, L10)
(camino L10, L8)
(camino L7, L14)
(camino L14, L7)
(camino L9, L1)
(camino L1, L9)
(camino L1, L10)
(camino L10, L1)
(camino L0, L8)
(camino L8, L0)
(camino L13, L4)
(camino L4, L13)
(camino L1, L8)
(camino L8, L1)
(camino L4, L10)
(camino L10, L4)
(camino L13, L7)
(camino L7, L13)
(camino L3, L5)
(camino L5, L3)
(camino L14, L10)
(camino L10, L14)
(camino L7, L3)
(camino L3, L7)
(camino L8, L14)
(camino L14, L8)
(camino L0, L10)
(camino L10, L0)
(en R0, L2)
(en R1, L9)
(en P0, L13)
(en P1, L13)
(en P2, L0)
(en S0, L3)
(= (peticion_persona L0) 1)
(= (peticion_persona L1) 2)
(= (peticion_persona L2) 0)
(= (peticion_persona L3) 5)
(= (peticion_persona L4) 3)
(= (peticion_persona L5) 3)
(= (peticion_persona L6) 1)
(= (peticion_persona L7) 0)
(= (peticion_persona L8) 0)
(= (peticion_persona L9) 0)
(= (peticion_persona L10) 3)
(= (peticion_persona L11) 4)
(= (peticion_persona L12) 2)
(= (peticion_persona L13) 6)
(= (peticion_persona L14) 6)
(= (peticion_suministro L0) 2)
(= (peticion_suministro L1) 1)
(= (peticion_suministro L2) 2)
(= (peticion_suministro L3) 1)
(= (peticion_suministro L4) 2)
(= (peticion_suministro L5) 2)
(= (peticion_suministro L6) 2)
(= (peticion_suministro L7) 2)
(= (peticion_suministro L8) 0)
(= (peticion_suministro L9) 1)
(= (peticion_suministro L10) 0)
(= (peticion_suministro L11) 2)
(= (peticion_suministro L12) 0)
(= (peticion_suministro L13) 0)
(= (peticion_suministro L14) 0)
(= (recursos_restantes) 4)
)
(:goal (or
    (forall (?l - lugar) (and (= (peticion_persona ?l) 0) (= (peticion_suministro ?l) 0)))
    (= (recursos_restantes) 0)
)))

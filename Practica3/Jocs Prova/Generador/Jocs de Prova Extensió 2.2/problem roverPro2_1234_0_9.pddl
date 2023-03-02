(define (problem roverPro22) (:domain roverTo22)
(:objects
L0 L1 L2 L3 L4 L5 L6 L7 L8 L9 L10 L11 L12 L13 L14  - lugar
R0 R1 R2 R3 R4 R5 R6 R7 R8  - rover
P0 P1 P2 P3 P4 P5 P6 P7  - persona
S0 S1 S2 S3 S4 S5 S6 S7  - suministro
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
(en R0, L13)
(en R1, L6)
(en R2, L12)
(en R3, L14)
(en R4, L6)
(en R5, L0)
(en R6, L4)
(en R7, L8)
(en R8, L7)
(en P0, L13)
(en P1, L6)
(en P2, L12)
(en P3, L14)
(en P4, L6)
(en P5, L0)
(en P6, L4)
(en P7, L8)
(en S0, L13)
(en S1, L6)
(en S2, L12)
(en S3, L14)
(en S4, L6)
(en S5, L0)
(en S6, L4)
(en S7, L8)
(= (libre R0) 2)
(= (libre R1) 2)
(= (libre R2) 2)
(= (libre R3) 2)
(= (libre R4) 2)
(= (libre R5) 2)
(= (libre R6) 2)
(= (libre R7) 2)
(= (libre R8) 2)
(= (combustible R0) 25)
(= (combustible R1) 49)
(= (combustible R2) 27)
(= (combustible R3) 3)
(= (combustible R4) 17)
(= (combustible R5) 33)
(= (combustible R6) 32)
(= (combustible R7) 26)
(= (combustible R8) 20)
(= (combustible_total) 232)
(= (peticion_persona L0) 12)
(= (peticion_persona L1) 13)
(= (peticion_persona L2) 1)
(= (peticion_persona L3) 8)
(= (peticion_persona L4) 16)
(= (peticion_persona L5) 15)
(= (peticion_persona L6) 12)
(= (peticion_persona L7) 9)
(= (peticion_persona L8) 15)
(= (peticion_persona L9) 11)
(= (peticion_persona L10) 6)
(= (peticion_persona L11) 16)
(= (peticion_persona L12) 4)
(= (peticion_persona L13) 9)
(= (peticion_persona L14) 4)
(= (peticion_suministro L0) 12)
(= (peticion_suministro L1) 13)
(= (peticion_suministro L2) 1)
(= (peticion_suministro L3) 8)
(= (peticion_suministro L4) 16)
(= (peticion_suministro L5) 15)
(= (peticion_suministro L6) 12)
(= (peticion_suministro L7) 9)
(= (peticion_suministro L8) 15)
(= (peticion_suministro L9) 11)
(= (peticion_suministro L10) 6)
(= (peticion_suministro L11) 16)
(= (peticion_suministro L12) 4)
(= (peticion_suministro L13) 9)
(= (peticion_suministro L14) 4)
(= (recursos_restantes) 16)
)
(:goal (or
    (forall (?l - lugar) (and (= (peticion_persona ?l) 0) (= (peticion_suministro ?l) 0)))
    (= (recursos_restantes) 0)
))
(:metric maximize (combustible_total)))

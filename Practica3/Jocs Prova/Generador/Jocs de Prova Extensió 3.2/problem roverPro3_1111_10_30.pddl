(define (problem roverPro32) (:domain roverTo32)
(:objects
L0 L1 L2 L3 L4  - lugar
R0 R1 R2 R3 R4 R5 R6 R7 R8 R9 R10 R11 R12 R13 R14 R15 R16 R17 R18 R19 R20 R21 R22 R23 R24 R25 R26 R27 R28 R29  - rover
P0 P1 P2 P3 P4  - persona
S0 S1 S2 S3 S4  - suministro
Alta Media Baja - prioridad
)
(:init
(camino L0, L1)  (camino L1, L0)
(camino L1, L2)  (camino L2, L1)
(camino L2, L3)  (camino L3, L2)
(camino L3, L4)  (camino L4, L3)
(camino L3, L1)  (camino L1, L3)
(camino L4, L0)  (camino L0, L4)
(en R0, L4)
(en R1, L0)
(en R2, L3)
(en R3, L3)
(en R4, L4)
(en R5, L0)
(en R6, L1)
(en R7, L3)
(en R8, L3)
(en R9, L2)
(en R10, L1)
(en R11, L0)
(en R12, L4)
(en R13, L3)
(en R14, L2)
(en R15, L0)
(en R16, L1)
(en R17, L2)
(en R18, L0)
(en R19, L3)
(en R20, L1)
(en R21, L4)
(en R22, L2)
(en R23, L3)
(en R24, L3)
(en R25, L2)
(en R26, L2)
(en R27, L3)
(en R28, L1)
(en R29, L2)
(en P0, L4)
(en P1, L0)
(en P2, L3)
(en P3, L3)
(en P4, L4)
(en S0, L4)
(en S1, L0)
(en S2, L3)
(en S3, L3)
(en S4, L4)
(= (libre R0) 2)
(= (libre R1) 2)
(= (libre R2) 2)
(= (libre R3) 2)
(= (libre R4) 2)
(= (libre R5) 2)
(= (libre R6) 2)
(= (libre R7) 2)
(= (libre R8) 2)
(= (libre R9) 2)
(= (libre R10) 2)
(= (libre R11) 2)
(= (libre R12) 2)
(= (libre R13) 2)
(= (libre R14) 2)
(= (libre R15) 2)
(= (libre R16) 2)
(= (libre R17) 2)
(= (libre R18) 2)
(= (libre R19) 2)
(= (libre R20) 2)
(= (libre R21) 2)
(= (libre R22) 2)
(= (libre R23) 2)
(= (libre R24) 2)
(= (libre R25) 2)
(= (libre R26) 2)
(= (libre R27) 2)
(= (libre R28) 2)
(= (libre R29) 2)
(= (combustible R0) 37)
(= (combustible R1) 3)
(= (combustible R2) 28)
(= (combustible R3) 31)
(= (combustible R4) 37)
(= (combustible R5) 1)
(= (combustible R6) 14)
(= (combustible R7) 30)
(= (combustible R8) 32)
(= (combustible R9) 18)
(= (combustible R10) 42)
(= (combustible R11) 11)
(= (combustible R12) 3)
(= (combustible R13) 34)
(= (combustible R14) 32)
(= (combustible R15) 21)
(= (combustible R16) 5)
(= (combustible R17) 16)
(= (combustible R18) 48)
(= (combustible R19) 24)
(= (combustible R20) 3)
(= (combustible R21) 27)
(= (combustible R22) 9)
(= (combustible R23) 39)
(= (combustible R24) 23)
(= (combustible R25) 25)
(= (combustible R26) 27)
(= (combustible R27) 19)
(= (combustible R28) 44)
(= (combustible R29) 17)
(= (combustible_total) 700)
(= (valor_prioridad Baja) 1)
(= (valor_prioridad Media) 2)
(= (valor_prioridad Alta) 3)
(= (peticion_persona L0 Baja) 9)  (= (peticion_persona L0 Media) 0)  (= (peticion_persona L0 Alta) 6)
(= (peticion_persona L1 Baja) 7)  (= (peticion_persona L1 Media) 9)  (= (peticion_persona L1 Alta) 0)
(= (peticion_persona L2 Baja) 3)  (= (peticion_persona L2 Media) 7)  (= (peticion_persona L2 Alta) 7)
(= (peticion_persona L3 Baja) 4)  (= (peticion_persona L3 Media) 10)  (= (peticion_persona L3 Alta) 2)
(= (peticion_persona L4 Baja) 0)  (= (peticion_persona L4 Media) 8)  (= (peticion_persona L4 Alta) 7)
(= (peticion_suministro L0 Baja) 9)   (= (peticion_suministro L0 Media) 0)  (= (peticion_suministro L0 Alta) 6)
(= (peticion_suministro L1 Baja) 7)   (= (peticion_suministro L1 Media) 9)  (= (peticion_suministro L1 Alta) 0)
(= (peticion_suministro L2 Baja) 3)   (= (peticion_suministro L2 Media) 7)  (= (peticion_suministro L2 Alta) 7)
(= (peticion_suministro L3 Baja) 4)   (= (peticion_suministro L3 Media) 10)  (= (peticion_suministro L3 Alta) 2)
(= (peticion_suministro L4 Baja) 0)   (= (peticion_suministro L4 Media) 8)  (= (peticion_suministro L4 Alta) 7)
(= (recursos_restantes) 10)
(= (num_max_prioridad) 3)
(= (suma_prioridades) 24)
)
(:goal (or
    (forall (?l - lugar) (forall (?p - prioridad) (and (= (peticion_persona ?l ?p) 0) (= (peticion_suministro ?l ?p) 0))))
    (= (recursos_restantes) 0)))
(:metric maximize (+ (* (combustible_total) 2) (* (suma_prioridades) 1))))

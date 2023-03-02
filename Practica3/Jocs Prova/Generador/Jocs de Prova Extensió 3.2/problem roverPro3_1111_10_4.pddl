(define (problem roverPro32) (:domain roverTo32)
(:objects
L0 L1 L2 L3 L4  - lugar
R0 R1 R2 R3  - rover
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
(= (combustible R0) 37)
(= (combustible R1) 3)
(= (combustible R2) 28)
(= (combustible R3) 31)
(= (combustible_total) 99)
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

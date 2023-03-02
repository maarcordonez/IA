(define (problem roverPro32) (:domain roverTo32)
(:objects
L0 L1 L2  - lugar
R0 R1  - rover
P0 P1  - persona
S0  - suministro
Alta Media Baja - prioridad
)
(:init
(camino L0, L1)  (camino L1, L0)
(camino L1, L2)  (camino L2, L1)
(en R0, L0)
(en R1, L0)
(en P0, L0)
(en P1, L2)
(en S0, L0)
(= (libre R0) 2)
(= (libre R1) 2)
(= (combustible R0) 16)
(= (combustible R1) 20)
(= (combustible_total) 36)
(= (valor_prioridad Baja) 1)
(= (valor_prioridad Media) 2)
(= (valor_prioridad Alta) 3)
(= (peticion_persona L0 Baja) 4)  (= (peticion_persona L0 Media) 2)  (= (peticion_persona L0 Alta) 2)
(= (peticion_persona L1 Baja) 4)  (= (peticion_persona L1 Media) 0)  (= (peticion_persona L1 Alta) 3)
(= (peticion_persona L2 Baja) 1)  (= (peticion_persona L2 Media) 0)  (= (peticion_persona L2 Alta) 1)
(= (peticion_suministro L0 Baja) 2)   (= (peticion_suministro L0 Media) 0)  (= (peticion_suministro L0 Alta) 1)
(= (peticion_suministro L1 Baja) 1)   (= (peticion_suministro L1 Media) 0)  (= (peticion_suministro L1 Alta) 0)
(= (peticion_suministro L2 Baja) 0)   (= (peticion_suministro L2 Media) 2)  (= (peticion_suministro L2 Alta) 2)
(= (recursos_restantes) 3)
(= (num_max_prioridad) 3)
(= (suma_prioridades) 12)
)
(:goal (or
    (forall (?l - lugar) (forall (?p - prioridad) (and (= (peticion_persona ?l ?p) 0) (= (peticion_suministro ?l ?p) 0))))
    (= (recursos_restantes) 0)))
(:metric maximize (+ (* (combustible_total) 2) (* (suma_prioridades) 1))))

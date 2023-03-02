(define (problem roverPro32) (:domain roverTo32)
(:objects
L0 L1 L2 L3 L4 - lugar
R0  - rover
S0  - suministro
Alta Media Baja - prioridad
)
(:init
(camino L0, L1)  (camino L1, L0)
(camino L1, L2)  (camino L2, L1)
(camino L1, L3)  (camino L3, L1)
(camino L1, L4)  (camino L3, L4)
(en R0, L0)
(en S0, L0)
(= (libre R0) 2)
(= (combustible R0) 10)
(= (combustible_total) 10)
(= (valor_prioridad Baja) 1)
(= (valor_prioridad Media) 2)
(= (valor_prioridad Alta) 3)
(= (peticion_persona L0 Baja) 0)  (= (peticion_persona L0 Media) 0)  (= (peticion_persona L0 Alta) 0)
(= (peticion_persona L1 Baja) 0)  (= (peticion_persona L1 Media) 0)  (= (peticion_persona L1 Alta) 0)
(= (peticion_persona L2 Baja) 0)  (= (peticion_persona L2 Media) 0)  (= (peticion_persona L2 Alta) 0)
(= (peticion_persona L3 Baja) 0)  (= (peticion_persona L3 Media) 0)  (= (peticion_persona L3 Alta) 0)
(= (peticion_persona L4 Baja) 0)  (= (peticion_persona L4 Media) 0)  (= (peticion_persona L4 Alta) 0)
(= (peticion_suministro L0 Baja) 0)   (= (peticion_suministro L0 Media) 0)  (= (peticion_suministro L0 Alta) 0)
(= (peticion_suministro L1 Baja) 0)   (= (peticion_suministro L1 Media) 0)  (= (peticion_suministro L1 Alta) 0)
(= (peticion_suministro L2 Baja) 1)   (= (peticion_suministro L2 Media) 0)  (= (peticion_suministro L2 Alta) 0)
(= (peticion_suministro L3 Baja) 0)   (= (peticion_suministro L3 Media) 1)  (= (peticion_suministro L3 Alta) 0)
(= (peticion_suministro L4 Baja) 0)   (= (peticion_suministro L4 Media) 0)  (= (peticion_suministro L4 Alta) 1)
(= (recursos_restantes) 1)
(= (num_max_prioridad) 3)
(= (suma_prioridades) 3)
)
(:goal (or
    (forall (?l - lugar) (forall (?p - prioridad) (and (= (peticion_persona ?l ?p) 0) (= (peticion_suministro ?l ?p) 0))))
    (= (recursos_restantes) 0)))
(:metric maximize (+ (* (combustible_total) 2) (* (suma_prioridades) 1))))

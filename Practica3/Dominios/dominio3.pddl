(define (domain roverTo3)

    (:requirements :strips :fluents :typing :negative-preconditions :fluents :disjunctive-preconditions)

    (:types
        rover movil lugar prioridad - object
        persona suministro - movil
    )

    (:predicates
        (en ?o - object ?l - lugar)
        (contiene ?r - rover ?m - movil)
        (camino ?l1 - lugar ?l2 - lugar)
    )

    (:functions
        (peticion_persona ?l - lugar ?p - prioridad)
        (peticion_suministro ?l - lugar ?p - prioridad)
        (valor_prioridad ?p - prioridad)
        (recursos_restantes)
        (libre ?r - rover)
        (combustible ?r - rover)
        (suma_prioridades)
        (num_max_prioridad)
        (combustible_total)
    )

    (:action mover
        :parameters (?r - rover ?s - lugar ?d - lugar)
        :precondition (and (en ?r ?s) (camino ?s ?d) (> (combustible ?r) 0))
        :effect (and (en ?r ?d) (not (en ?r ?s)) (decrease (combustible ?r) 1) (decrease (combustible_total) 1))
    )

    (:action coger_persona
        :parameters (?r - rover ?m - persona ?l - lugar)
        :precondition (and (en ?r ?l) (en ?m ?l) (not (contiene ?r ?m)) (>= (libre ?r) 1))
        :effect (and (not (en ?m ?l)) (contiene ?r ?m) (decrease (libre ?r) 1))
    )

    (:action coger_suministro
        :parameters (?r - rover ?m - suministro ?l - lugar)
        :precondition (and (en ?r ?l) (en ?m ?l) (not (contiene ?r ?m)) (>= (libre ?r) 2))
        :effect (and (not (en ?m ?l)) (contiene ?r ?m) (decrease (libre ?r) 2))
    )

    ; (:action dejar
    ;     :parameters (?r - rover ?m - movil ?l - lugar)
    ;     :precondition (and (en ?r ?l) (contiene ?r ?m))
    ;     :effect (and (en ?m ?l) (not (contiene ?r ?m)))
    ; )

    (:action dejar_persona_no_final
        :parameters (?r - rover ?m - persona ?l - lugar)
        :precondition (and (en ?r ?l) (contiene ?r ?m) (forall (?p - prioridad) (= (peticion_persona ?l ?p) 0)))
        :effect (and (en ?m ?l) (not (contiene ?r ?m)) (increase (libre ?r) 1))
    )

    (:action dejar_persona_final
        :parameters (?r - rover ?m - persona ?l - lugar ?p - prioridad)
        :precondition (and (en ?r ?l) (contiene ?r ?m) (> (peticion_persona ?l ?p) 0))
        :effect (and (not (contiene ?r ?m)) (decrease (peticion_persona ?l ?p) 1) (increase (libre ?r) 1) (decrease (recursos_restantes) 1) (decrease (suma_prioridades) (- (+ (num_max_prioridad) 1) (valor_prioridad ?p))))
    )

    (:action dejar_suministro_no_final
        :parameters (?r - rover ?m - suministro ?l - lugar)
        :precondition (and (en ?r ?l) (contiene ?r ?m) (forall (?p - prioridad) (= (peticion_suministro ?l ?p) 0)))
        :effect (and (en ?m ?l) (not (contiene ?r ?m)) (increase (libre ?r) 2))
    )

    (:action dejar_suministro_final
        :parameters (?r - rover ?m - suministro ?l - lugar ?p - prioridad)
        :precondition (and (en ?r ?l) (contiene ?r ?m) (> (peticion_suministro ?l ?p) 0))
        :effect (and (not (contiene ?r ?m)) (decrease (peticion_suministro ?l ?p) 1) (increase (libre ?r) 2) (decrease (recursos_restantes) 1) (decrease (suma_prioridades) (- (+ (num_max_prioridad) 1) (valor_prioridad ?p))))
    )

)
(define (domain roverTo0)

(:requirements :strips :fluents :typing :negative-preconditions :fluents :disjunctive-preconditions)

(:types 
    rover movil lugar - object
    persona suministro - movil
)


(:predicates 
    (en ?o - object ?l - lugar)
    (contiene ?r - rover ?m - movil)
    (camino ?l1 - lugar ?l2 - lugar)
)

(:functions
    (peticion_persona ?l - lugar)
    (peticion_suministro ?l - lugar)
    (recursos_restantes)
)

(:action mover
    :parameters (?r - rover ?s - lugar ?d - lugar)
    :precondition (and (en ?r ?s) (camino ?s ?d))
    :effect (and (en ?r ?d) (not (en ?r ?s)))
)

(:action coger
    :parameters (?r - rover ?m - movil ?l - lugar)
    :precondition (and (en ?r ?l) (en ?m ?l) (not (contiene ?r ?m)))
    :effect (and (not (en ?m ?l)) (contiene ?r ?m))
)

; (:action dejar
;     :parameters (?r - rover ?m - movil ?l - lugar)
;     :precondition (and (en ?r ?l) (contiene ?r ?m))
;     :effect (and (en ?m ?l) (not (contiene ?r ?m)))
; )

(:action dejar_persona_no_final
    :parameters (?r - rover ?m - persona ?l - lugar)
    :precondition (and (en ?r ?l) (contiene ?r ?m) (= (peticion_persona ?l) 0))
    :effect (and (en ?m ?l) (not (contiene ?r ?m)))
)

(:action dejar_persona_final
    :parameters (?r - rover ?m - persona ?l - lugar)
    :precondition (and (en ?r ?l) (contiene ?r ?m) (> (peticion_persona ?l) 0))
    :effect (and (not (contiene ?r ?m)) (decrease (peticion_persona ?l) 1) (decrease (recursos_restantes) 1))
)

(:action dejar_suministro_no_final
    :parameters (?r - rover ?m - suministro ?l - lugar)
    :precondition (and (en ?r ?l) (contiene ?r ?m) (= (peticion_suministro ?l) 0))
    :effect (and (en ?m ?l) (not (contiene ?r ?m)))
)

(:action dejar_suministro_final
    :parameters (?r - rover ?m - suministro ?l - lugar)
    :precondition (and (en ?r ?l) (contiene ?r ?m) (> (peticion_suministro ?l) 0))
    :effect (and (not (contiene ?r ?m)) (decrease (peticion_suministro ?l) 1) (decrease (recursos_restantes) 1))
)

)
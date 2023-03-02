(defrule crea-instancia-persona
    (declare (salience 10))
    =>
    (make-instance p of Persona)
)

(defrule crea-instancia-planificacion
    (declare (salience 10))
    =>
    (make-instance planificacion of Planificacion)
)


; ------------------------------------------------------------------------------------------------------------------------
;																									MÓDULO MAIN
; ------------------------------------------------------------------------------------------------------------------------
; En este módulo se da la bienvenida al programa y se da inicio a la ejecución
(defmodule MAIN
	(export ?ALL)
)

; **********
; * INICIO *
; **********
(defrule sistema-programa "Da la bienvenida al programa"
  (initial-fact)
  =>
	(printout t crlf crlf)
	(printout t "  -----------------------              PRACTICA-2: SISTEMAS BASADOS EN EL CONOCIMIENTO           -------------------------- "crlf)
	(printout t " Programa para crear una rutina semanal de ejercicios adecuado a las caracteristicas de la persona segun su edad, su nivel actual de forma y sus enfermedades cronicas. "crlf)

	(printout t crlf crlf)
	(assert (iniciado))
	(focus PREGUNTAS)
)


; -------------------------------------------------------------------------------------------
; MODULO PREGUNTAS INICIALES
; -------------------------------------------------------------------------------------------
(defmodule PREGUNTAS
	(import MAIN ?ALL)
	(export ?ALL)
)

; Hace una pregunta que tiene como respuesta un valor dentro de los valores permitidos
(deffunction ask-question (?question $?allowed-values)
   (printout t ?question)
   (bind ?answer (read))
   (if (lexemep ?answer)
       then (bind ?answer (lowcase ?answer)))
   (while (not (member ?answer ?allowed-values)) do
      (printout t ?question)
      (bind ?answer (read))
      (if (lexemep ?answer)
          then (bind ?answer (lowcase ?answer))))
   ?answer
)

; Hace una pregunta del tipo si o no
(deffunction yes-or-no-p (?question)
   (bind ?response (ask-question ?question si no s n))
   (if (or (eq ?response si) (eq ?response s))
       then TRUE
       else FALSE)
)

; Hace una pregunta que tiene como respuesta un valor comprendido en un rango
(deffunction pregunta-numerica (?pregunta ?rangini ?rangfi)
	(format t "%s [%d, %d] " ?pregunta ?rangini ?rangfi)
	(bind ?respuesta (read))
	(while (not(and(>= ?respuesta ?rangini)(<= ?respuesta ?rangfi))) do
		(format t " %s [%d, %d] " ?pregunta ?rangini ?rangfi)
		(bind ?respuesta (read))
	)
	?respuesta
)



; ----------------------------------------------------------------------------
(defrule p_nombre "Pregunta el nombre del usuario"
  (iniciado)
  ?x <- (object(is-a Persona))
  =>
  (printout t "Introduzca su nombre: " crlf)
  (bind ?nombre (read))
  (send ?x put-Nombre ?nombre)
)



(defrule p_edad "Pregunta edad"
  (iniciado)
  ?x <- (object(is-a Persona))
  =>
  (printout t "Introduzca su edad: " crlf)
  (bind ?edad (read))
  (if  (> ?edad 99) then (printout t "Felicidades por su primer siglo en este precioso mundo. Sus bisnietos deben estar muy contentos esperando la tan ansiada herencia. Ya puede descansar en paz. Muy en paz ;D" crlf))
  (if (> ?edad 120) then (printout t "Es usted demasiado mayor para realizar actividad fisica diaria. Lo sentimos pero deberia hablar con un especialista o hacer una ouija." crlf)
    else ( if (< ?edad 65) then (printout t "Es demasiado joven para nuestro progama especializado en gente mayor. Salga a la calle y disfrute de la vida ;P " crlf)
        else (send ?x put-Edad ?edad)))
)



(defrule p_altura "Pregunta altura"
  (iniciado)
  ?x <- (object(is-a Persona))
  =>
  (printout t "Introduzca su altura en centímetros " crlf)
  (bind ?altura (read))
     (while (not (>= ?altura 0)) do
      (printout t "Introduzca una altura válida (mayor a 0) " crlf)
      (bind ?altura (read))
      )
  (send ?x put-Altura ?altura)
)

; -------------------------------------------------------------------------------------------
; MODULO FINAL PROGRAMA :(
; -------------------------------------------------------------------------------------------
(defmodule FINAL
	(import MAIN ?ALL)
	(import PREGUNTAS ?aLL)
	(export ?ALL)
)

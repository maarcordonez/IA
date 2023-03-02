;;; ---------------------------------------------------------
;;; practicados.clp
;;; Translated by owl2clips
;;; Translated to CLIPS from ontology practicados.owl
;;; :Date 05/12/2022 18:45:34

(defclass Ejercicio
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot ejercita
        (type INSTANCE)
        (create-accessor read-write))
    (multislot necesita
        (type INSTANCE)
        (create-accessor read-write))
    (slot Nombre
        (type STRING)
        (create-accessor read-write))
)

(defclass Aerobico
    (is-a Ejercicio)
    (role concrete)
    (pattern-match reactive)
    (slot Duracion
        (type FLOAT)
        (create-accessor read-write))
    (slot Intensidad
        (type SYMBOL)
        (create-accessor read-write))
)

(defclass Descanso
    (is-a Ejercicio)
    (role concrete)
    (pattern-match reactive)
    (slot Duracion
        (type FLOAT)
        (create-accessor read-write))
)

(defclass Equilibrio
    (is-a Ejercicio)
    (role concrete)
    (pattern-match reactive)
    (slot Duracion
        (type FLOAT)
        (create-accessor read-write))
    (slot Repeticiones
        (type INTEGER)
        (create-accessor read-write))
    (slot Series
        (type INTEGER)
        (create-accessor read-write))
)

(defclass Flexibilidad
    (is-a Ejercicio)
    (role concrete)
    (pattern-match reactive)
    (slot Duracion
        (type FLOAT)
        (create-accessor read-write))
    (slot Repeticiones
        (type INTEGER)
        (create-accessor read-write))
    (slot Series
        (type INTEGER)
        (create-accessor read-write))
)

(defclass Fuerza
    (is-a Ejercicio)
    (role concrete)
    (pattern-match reactive)
    (slot Intensidad
        (type SYMBOL)
        (create-accessor read-write))
    (slot Repeticiones
        (type INTEGER)
        (create-accessor read-write))
    (slot Series
        (type INTEGER)
        (create-accessor read-write))
)

(defclass Enfermedad
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot ejercicio_recomendado
        (type INSTANCE)
        (create-accessor read-write))
    (multislot no_puede_hacer
        (type INSTANCE)
        (create-accessor read-write))
    (multislot Gravedad
        (type SYMBOL)
        (create-accessor read-write))
    (slot TipoEnfermedad
        (type SYMBOL)
        (create-accessor read-write))
)

(defclass Instalaciones
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
)

(defclass Material
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (slot Peso
        (type FLOAT)
        (create-accessor read-write))
)

(defclass ParteDelCuerpo
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
)

(defclass ejercicios_disponibles
    (is-a USER)
    (role concrete)
    (multislot disponibles
        (type INSTANCE)
        (create-accessor read-write)
        )

    (multislot recomendados
        (type INSTANCE)
        (create-accessor read-write)
        )
    
    (multislot favoritos
        (type INSTANCE)
        (create-accessor read-write))
    
    (multislot odiados
        (type INSTANCE)
        (create-accessor read-write))
)

(defclass Persona
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot hace_ejercicio
        (type INSTANCE)
        (create-accessor read-write))
    (multislot puede_ir_a
        (type INSTANCE)
        (create-accessor read-write))
    (multislot tiene_enfermedad
        (type INSTANCE)
        (create-accessor read-write))
    (multislot tiene_material
        (type INSTANCE)
        (create-accessor read-write))
    (slot Altura
        (type FLOAT)
        (create-accessor read-write))
    (slot DiasDisponibles
        (type INTEGER)
        (create-accessor read-write))
    (slot Edad
        (type INTEGER)
        (create-accessor read-write))
    (slot FrecuenciaCardiaca
        (type FLOAT)
        (create-accessor read-write))
    (slot IMC
        (type FLOAT)
        (create-accessor read-write))
    (multislot NivelActividad
        (type SYMBOL)
        (create-accessor read-write))
    (slot Nombre
        (type STRING)
        (create-accessor read-write))
    (slot Peso
        (type FLOAT)
        (create-accessor read-write))
)

(defclass Planificacion
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot formado_por
        (type INSTANCE)
        (create-accessor read-write))
)

(defclass Sesion
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot contiene
        (type INSTANCE)
        (create-accessor read-write))
)

(definstances instances
    ([Abdominales] of Fuerza
         (ejercita  [Cadera])
    )

    ([Agachadillas] of Fuerza
         (ejercita  [Piernas])
    )

    ([Andar] of Aerobico
         (ejercita  [Piernas])
    )

    ([AndarLigero] of Aerobico
         (ejercita  [Piernas])
    )

    ([AndarPuntillas] of Equilibrio
         (ejercita  [Piernas])
    )

    ([AndarTalon] of Equilibrio
         (ejercita  [Piernas])
    )

    ;;; Severa: No hacer nada Moderada/Leve: Ej suave muy progresivo. No extenuante
    ([Anemia] of Enfermedad
        (no_puede_hacer  [AndarLigero] [BiciEstatica] [Correr] [Eliptica] [Patinar] [Remo] [Senderismo] [Tenis] [EjerciciosKegel] [Abdominales] [Agachadillas] [ExtensionCaderas] [ExtensionRodilla] [FlexionCaderas] [FlexionPlantar] [FlexionRodilla] [MaquinasMusculacion] [PesasBiceps] [PesasHombros] [PesasLevantarBrazos] [PesasTriceps])
    )

    ;;; No hacer nada
    ([Aneurisma] of Enfermedad
       (no_puede_hacer  [AndarLigero] [BiciEstatica] [Correr] [Eliptica] [Patinar] [Remo] [Senderismo] [Tenis] [EjerciciosKegel] [Abdominales] [Agachadillas] [ExtensionCaderas] [ExtensionRodilla] [FlexionCaderas] [FlexionPlantar] [FlexionRodilla] [MaquinasMusculacion] [PesasBiceps] [PesasHombros] [PesasLevantarBrazos] [PesasTriceps])

    )

    ([ApretarHandGrip] of Fuerza
         (ejercita  [Brazos])
         (necesita  [HandGrip])
    )

    ([Aquagym] of Aerobico
         (ejercita  [Brazos] [Cadera] [Cuello] [Hombros] [Piernas] [Torso])
         (necesita  [Piscina])
    )

    ([Artrosis] of Enfermedad
         (ejercicio_recomendado  [Andar] [AndarLigero] [Aquagym] [Baile] [BiciEstatica] [Correr] [Eliptica] [Jardineria] [Natacion] [Patinar] [Remo] [Senderismo] [Taichi] [Tenis] [Yoga] [Zumba])
    )

    ([Baile] of Aerobico
         (ejercita  [Cadera] [Hombros] [Piernas] [Torso])
    )

    ([BiciEstatica] of Aerobico
         (ejercita  [Piernas])
         (necesita  [BiciEstaticaMaquina])
    )

    ([BiciEstaticaMaquina] of Material
    )

    ([Brazos] of ParteDelCuerpo
    )

    ([Cadera] of ParteDelCuerpo
    )

    ([Caidas] of Enfermedad
         (ejercicio_recomendado  [Natacion] [AndarPuntillas] [AndarTalon] [Aquagym] [CaminarLineaRectaPiesJuntos] [LevantarseSentarseSillaSinBrazos] [SostenerseSobreUnPie] [Taichi] [Yoga])
         (no_puede_hacer  [Andar] [AndarLigero] [Correr] [Patinar] [Senderismo] [Tenis] [Baile] [Zumba])
    )

    ;;; Camine como si fuese por una línea recta, poniendo un pie delante del otro, juntando el talón del pie de delante con los dedos del pie de atrás
    ([CaminarLineaRectaPiesJuntos] of Equilibrio
         (ejercita  [Piernas])
    )

    ([Caminos] of Instalaciones
    )

    ([CampoTenis] of Instalaciones
    )

    ;;; 5 por  semana y  duracion moderada 3 por semana alta intensidad
    ([Cancer] of Enfermedad
         (ejercicio_recomendado  [Andar] [BiciEstatica] [Correr] [MaquinasMusculacion] [Natacion] [PesasBiceps] [PesasHombros] [PesasLevantarBrazos] [PesasTriceps] [Remo] [Yoga])
    )

    ([Cardiacas] of Enfermedad
         (ejercicio_recomendado  [Abdominales] [Agachadillas] [ApretarHandGrip] [ElevacionPiernasLados] [ExtensionCaderas] [ExtensionRodilla] [FlexionCaderas] [FlexionPlantar] [FlexionRodilla] [LevantarseSentarseSilla] [LevantarseSentarseSillaSinBrazos] [MaquinasMusculacion] [PesasBiceps] [PesasHombros] [PesasLevantarBrazos] [PesasTriceps])
         (no_puede_hacer  [Correr] [Eliptica] [Patinar] [Senderismo] [Tenis])
    )

    ;;; aerobico 45-60 min 5 dias a la semana. control freq cardiaca
    ([Coronarias] of Enfermedad
         (ejercicio_recomendado  [Andar] [AndarLigero] [Aquagym] [Baile] [BiciEstatica] [Correr] [Eliptica] [Jardineria] [Natacion] [Patinar] [Remo] [Senderismo] [Taichi] [Tenis] [Yoga] [Zumba])
    )

    ([Correr] of Aerobico
         (ejercita  [Piernas])
         (necesita  [Caminos] [Gimnasio] [Parque])
    )

    ([Cuello] of ParteDelCuerpo
    )

    ([Depresion] of Enfermedad
         (ejercicio_recomendado  [Andar] [AndarLigero] [Aquagym] [Baile] [BiciEstatica] [Correr] [Eliptica] [Jardineria] [Natacion] [Patinar] [Remo] [Senderismo] [Taichi] [Tenis] [Yoga] [Zumba])
    )

    ([Diabetes2] of Enfermedad
         (ejercicio_recomendado  [Abdominales] [Agachadillas] [ApretarHandGrip] [ElevacionPiernasLados] [ExtensionCaderas] [ExtensionRodilla] [FlexionCaderas] [FlexionPlantar] [FlexionRodilla] [LevantarseSentarseSilla] [LevantarseSentarseSillaSinBrazos] [MaquinasMusculacion] [PesasBiceps] [PesasHombros] [PesasLevantarBrazos] [PesasTriceps])
    )

    ([Dislipemia] of Enfermedad
         (ejercicio_recomendado  [Andar] [AndarLigero] [Aquagym] [Baile] [BiciEstatica] [Correr] [Eliptica] [Jardineria] [Natacion] [Patinar] [Remo] [Senderismo] [Taichi] [Tenis] [Yoga] [Zumba])
    )

    ([EjerciciosKegel] of Equilibrio
         (ejercita  [Cadera])
    )

    ([ElevacionPiernasLados] of Fuerza
         (ejercita  [Piernas])
    )

    ([Eliptica] of Aerobico
         (ejercita  [Piernas])
         (necesita  [MaquinaEliptica])
    )

    ([EscalerasEnCasa] of Instalaciones
    )

    ([EstiramientoCuadriceps] of Flexibilidad
         (ejercita  [Piernas])
    )

    ([EstiramientoGemelos] of Flexibilidad
         (ejercita  [Piernas])
    )

    ([EstiramientoHombros] of Flexibilidad
         (ejercita  [Hombros])
    )

    ([EstiramientoIsquiotibiales] of Flexibilidad
         (ejercita  [Piernas])
    )

    ([EstiramientoMuneca] of Flexibilidad
         (ejercita  [Brazos])
    )

    ([EstiramientoPantorrillas] of Flexibilidad
         (ejercita  [Piernas])
    )

    ([EstiramientoPectorales] of Flexibilidad
         (ejercita  [Torso])
    )

    ([EstiramientoTendonesMuslo] of Flexibilidad
         (ejercita  [Cadera])
    )

    ([EstiramientoTobillos] of Flexibilidad
         (ejercita  [Piernas])
    )

    ([EstiramientoTriceps] of Flexibilidad
         (ejercita  [Brazos])
    )

    ([ExtensionCaderas] of Fuerza
         (ejercita  [Cadera])
    )

    ([ExtensionRodilla] of Fuerza
         (ejercita  [Piernas])
    )

    ([FlexionCaderas] of Fuerza
         (ejercita  [Cadera])
    )

    ([FlexionPlantar] of Fuerza
         (ejercita  [Piernas])
    )

    ([FlexionRodilla] of Fuerza
         (ejercita  [Piernas])
    )

    ([Fragilidad] of Enfermedad
         (ejercicio_recomendado  [Andar] [AndarLigero] [Aquagym] [Baile] [BiciEstatica] [Correr] [Eliptica] [Jardineria] [Natacion] [Patinar] [Remo] [Senderismo] [Taichi] [Tenis] [Yoga] [Zumba])
    )

    ([Gimnasio] of Instalaciones
    )

    ([GirosDeCintura] of Flexibilidad
         (ejercita  [Cadera])
    )

    ([HandGrip] of Material
    )

    ;;; cuidar mucho la presion en todo momento Si no esta controlada consultar un medico y no hacer nada hasta que el medico diga lo contrario
    ([Hipertension] of Enfermedad
         (ejercicio_recomendado  [Abdominales] [Agachadillas] [Andar] [AndarLigero] [ApretarHandGrip] [Aquagym] [Baile] [BiciEstatica] [Correr] [ElevacionPiernasLados] [Eliptica] [ExtensionCaderas] [ExtensionRodilla] [FlexionCaderas] [FlexionPlantar] [FlexionRodilla] [Jardineria] [LevantarseSentarseSilla] [LevantarseSentarseSillaSinBrazos] [MaquinasMusculacion] [Natacion] [Patinar] [PesasBiceps] [PesasHombros] [PesasLevantarBrazos] [PesasTriceps] [Remo] [Senderismo] [Taichi] [Tenis] [Yoga] [Zumba])
    )

    ([Hombros] of ParteDelCuerpo
    )

    ([IncontinenciaUrinaria] of Enfermedad
         (ejercicio_recomendado  [AndarPuntillas] [AndarTalon] [CaminarLineaRectaPiesJuntos] [EjerciciosKegel] [LevantarseSentarseSillaSinBrazos] [SostenerseSobreUnPie] [SubirBajarEscaleras])
    )

    ([InsuficienciaRenal] of Enfermedad
         (ejercicio_recomendado  [Andar] [AndarLigero] [Aquagym] [Baile] [BiciEstatica] [Correr] [Eliptica] [Jardineria] [Natacion] [Patinar] [Remo] [Senderismo] [Taichi] [Tenis] [Yoga] [Zumba])
    )

    ([Jardin] of Instalaciones
    )

    ([Jardineria] of Aerobico
         (ejercita  [Brazos] [Cadera] [Hombros] [Piernas] [Torso])
         (necesita  [Jardin])
    )

    ([LateralizacionCuello] of Flexibilidad
         (ejercita  [Cuello])
    )

    ([LateralizacionTronco] of Flexibilidad
         (ejercita  [Torso])
    )

    ([LevantarseSentarseSilla] of Fuerza
         (ejercita  [Piernas])
    )

    ([LevantarseSentarseSillaSinBrazos] of Fuerza
         (ejercita  [Piernas])
    )

    ([Mancuernas] of Material
    )

    ([MaquinaEliptica] of Material
    )

    ([MaquinasMusculacion] of Fuerza
         (ejercita  [Brazos] [Cadera] [Hombros] [Piernas] [Torso])
    )

    ([Natacion] of Aerobico
         (ejercita  [Brazos] [Hombros] [Piernas] [Torso])
         (necesita  [Piscina])
    )

    ([Obesidad] of Enfermedad
         (ejercicio_recomendado  [Andar] [AndarLigero] [Aquagym] [Baile] [Taichi] [Tenis] [Yoga] [Zumba])
    )

    ;;; pesos muy ligeros, que se puedan hacer unas 25 reps facilmente
    ([Osteoporosis] of Enfermedad
         (ejercicio_recomendado  [Agachadillas] [Andar] [AndarLigero] [AndarPuntillas] [AndarTalon] [Aquagym] [CaminarLineaRectaPiesJuntos] [ElevacionPiernasLados] [ExtensionCaderas] [ExtensionRodilla] [FlexionCaderas] [FlexionPlantar] [FlexionRodilla] [LevantarseSentarseSillaSinBrazos] [MaquinasMusculacion] [Natacion] [PesasBiceps] [PesasHombros] [PesasLevantarBrazos] [PesasTriceps] [SostenerseSobreUnPie] [SubirBajarEscaleras])
         (no_puede_hacer  [Correr] [Patinar] [Senderismo])
    )

    ([PiernaRota] of Enfermedad
         (ejercicio_recomendado  [Aquagym] [Jardineria] [Remo] [Yoga] [Taichi] [Agachadillas])
         (no_puede_hacer  [Correr] [Andar] [Senderismo] [AndarLigero] [Baile] [BiciEstatica] [Eliptica] [Patinar] [Senderismo] [Zumba] [Tenis] [ElevacionPiernasLados] [ExtensionRodilla] [ExtensionCaderas] [ExtensionRodilla] [FlexionCaderas] [FlexionPlantar] [FlexionRodilla] [MaquinasMusculacion] [CaminarLineaRectaPiesJuntos] [AndarPuntillas] [AndarTalon] [EstiramientoCuadriceps] [EstiramientoGemelos] [EstiramientoPantorrillas] [EstiramientoTendonesMuslo] [EstiramientoTobillos])
    )

    ([BrazoRoto] of Enfermedad
         (no_puede_hacer  [Remo] [Taichi] [LevantarseSentarseSilla] [Tenis] [MaquinasMusculacion] [ApretarHandGrip] [PesasBiceps] [PesasHombros] [PesasLevantarBrazos] [PesasTriceps] [EstiramientoTriceps] [EstiramientoMuneca] [EstiramientoHombros] [RotacionHombro] [Jardineria])
    )

    ([Parque] of Instalaciones
    )

    ([Patinar] of Aerobico
         (ejercita  [Piernas])
         (necesita  [Caminos] [Parque] [Patines])
    )

    ([Patines] of Material
    )

    ([PesasBiceps] of Fuerza
         (ejercita  [Brazos])
         (necesita  [Gimnasio] [Mancuernas])
    )

    ([PesasHombros] of Fuerza
         (ejercita  [Hombros])
         (necesita  [Gimnasio] [Mancuernas])
    )

    ([PesasLevantarBrazos] of Fuerza
         (ejercita  [Brazos] [Hombros])
         (necesita  [Gimnasio] [Mancuernas])
    )

    ([PesasTriceps] of Fuerza
         (ejercita  [Brazos])
         (necesita  [Gimnasio] [Mancuernas])
    )

    ([Piernas] of ParteDelCuerpo
    )

    ([Piscina] of Instalaciones
    )

    ([RaquetaTenis] of Material
    )

    ([Remo] of Aerobico
         (ejercita  [Brazos] [Torso])
         (necesita  [Gimnasio])
    )

    ;;; nunca agotarse, parar antes
    ([Respiratorias] of Enfermedad
         (ejercicio_recomendado  [Andar] [AndarLigero] [Aquagym] [Baile] [BiciEstatica] [Jardineria] [Taichi] [Yoga] [Zumba])
         (no_puede_hacer  [Abdominales] [Agachadillas] [Correr] [Eliptica] [FlexionPlantar] [MaquinasMusculacion] [Patinar] [PesasHombros] [PesasLevantarBrazos] [Senderismo] [Tenis])
    )

    ([RotacionDobleCadera] of Flexibilidad
         (ejercita  [Cadera])
    )

    ([RotacionHombro] of Flexibilidad
         (ejercita  [Hombros])
    )

    ([RotacionSimpleCadera] of Flexibilidad
         (ejercita  [Cadera])
    )

    ([Senderismo] of Aerobico
         (ejercita  [Piernas])
         (necesita  [Caminos])
    )

    ([SostenerseSobreUnPie] of Equilibrio
         (ejercita  [Piernas])
    )

    ([SubirBajarEscaleras] of Equilibrio
         (ejercita  [Piernas])
         (necesita  [EscalerasEnCasa])
    )

    ([Taichi] of Aerobico
        (ejercita  [Brazos] [Cadera] [Cuello] [Hombros] [Piernas] [Torso])
    )

    ([Tenis] of Aerobico
         (ejercita  [Brazos])
         (necesita  [CampoTenis] [RaquetaTenis])
    )

    ([Torso] of ParteDelCuerpo
    )

    ([Yoga] of Aerobico
        (ejercita  [Brazos] [Cadera] [Cuello] [Hombros] [Piernas] [Torso])
    )

    ([Zumba] of Aerobico
        (ejercita  [Brazos] [Cadera] [Cuello] [Hombros] [Piernas] [Torso])
    )

    ([Reposo] of Descanso
    )

)


;He modificat la ontologia manualment
;Tambe he afegit la classe ejerciciosdisponibles, yoga ara es aerobico i exercita tot i zumba i taichi tambe
;--------------------------------------------------------------------
;                       MODULOS
;--------------------------------------------------------------------


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

(defrule crea_instancia-ejercicios "Crea la instancia de ejercicios disponibles"
    (declare (salience 10))
    =>
    (make-instance ejs_disp of ejercicios_disponibles)
)


; ------------------------------------------------------------------------------------------------------------------------
;                                                                                                    MÓDULO MAIN
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

; Hace una pregunta que tiene como respuesta un valor dentro de los valores permitidos
(deffunction ask-question-no-sensitive (?question $?allowed-values)
   (printout t ?question)
   (bind ?answer (read))
   ;(if (lexemep ?answer)
   ;    then (bind ?answer (lowcase ?answer)))
   (while (not (member ?answer ?allowed-values)) do
      (printout t "Respuesta incorrecta, intentelo de nuevo " ?question)
      (bind ?answer (read))
      ;(if (lexemep ?answer)
      ;    then (bind ?answer (lowcase ?answer)))
      )
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



;------ Preguntas iniciales con la información básica -------
; -----------------------------------------------------------
(defrule pregunta_nombre "Pregunta el nombre del usuario"
    (declare (salience 10))
    ?x <- (object(is-a Persona))
    =>
    (printout t "Introduzca su nombre: " crlf)
    (bind ?nombre (read))
    (send ?x put-Nombre ?nombre)
)



(defrule pregunta_edad "Pregunta edad"
    (declare (salience 5))
    ?x <- (object(is-a Persona))
    =>
    (printout t "Introduzca su edad: " crlf)
    (bind ?edad (read))
    (if  (> ?edad 99) then (printout t "Felicidades por su primer siglo en este precioso mundo. Sus bisnietos deben estar muy contentos esperando la tan ansiada herencia. Ya puede descansar en paz. Muy en paz ;D" crlf) (focus FINAL))
    (if (> ?edad 120) then (assert (motivo "Es usted demasiado mayor para realizar actividad fisica diaria. Lo sentimos pero deberia hablar con un especialista o hacer una ouija.")) (focus FINAL)
        else ( 
            if (< ?edad 65) then (assert (motivo "Es demasiado joven para nuestro progama especializado en gente mayor. Salga a la calle y disfrute de la vida ;P ")) (focus FINAL)
            else (send ?x put-Edad ?edad) (assert (edadCorrecta))
        )
    )
)



(defrule pregunta_altura_y_peso "Pregunta altura y peso (IMC)"
    (edadCorrecta)
    ?x <- (object(is-a Persona))
    =>
    (printout t "Introduzca su altura en centimetros " crlf)
    (bind ?altura (read))
        (while (not (>= ?altura 0)) do
        (printout t "Introduzca una altura valida (mayor a 0) " crlf)
        (bind ?altura (read))
        )
    (send ?x put-Altura ?altura)
    (printout t "Introduzca su peso " crlf)
    (bind ?peso (read))
        (while (not (>= ?peso 0)) do
        (printout t "Introduzca un peso valido " crlf)
        (bind ?peso (read))
        )
    (send ?x put-Peso ?peso)
    (bind ?imc (* (/ ?peso (* ?altura ?altura)) 10000)) ; multiplicamos por 10000 porque las alturas estan en cm y deberian estar en metros
    (send ?x put-IMC ?imc)
    (printout t "Su IMC es: " ?imc  crlf)
    (if (> ?imc 30) then (printout t "Segun el calculo del IMC, usted tiene sobrepeso. " ?imc  crlf))
)

; (defrule pregunta_peso "Pregunta peso"
;   (edadCorrecta)
;   ?x <- (object(is-a Persona))
;   =>
;   (printout t "Introduzca su peso " crlf)
;   (bind ?peso (read))
;      (while (not (>= ?peso 0)) do
;       (printout t "Introduzca un peso valido " crlf)
;       (bind ?peso (read))
;       )
;   (send ?x put-Peso ?peso)
; )


(defrule pregunta_actividad "Pregunta el nivel de actividad"
    (edadCorrecta)
    ?x <- (object(is-a Persona))
    =>
    (bind ?ans (ask-question "Definina su estilo de vida? (sedentario/activo/muy_activo) "
    sedentario activo muy_activo))
    (if (eq ?ans sedentario) then 
    (assert (sedentario))
    )
    (if (eq ?ans activo) then pregunta-numerica
    (assert (activo))
    )
    (if (eq ?ans muy_activo) then 
    (assert (muy_activo))
    )
    (send ?x put-NivelActividad ?ans)
)


(defrule pregunta_disponibilidad "Disponibilidad"
    (edadCorrecta)
    =>
    (bind ?ans (pregunta-numerica "¿Cuantos dias a la semana podrias entrenar? (introduce un numero de 0 a 7) " 0 7))
    (assert(disponibilidad ?ans))
)

(defrule pregunta_ejs_favoritos "Ejs_favoritos"
    (edadCorrecta)
    =>
    (bind ?ans "")
    (printout t "Entre los siguientes, que ejercicios le gustaria mucho hacer? (Escriba 1 por linea y escriba NO cuando haya acabado)" crlf)
    (printout t "Andar Aquagym Baile BiciEstatica Correr Eliptica Jardineria Natacion Patinar Remo Senderismo Taichi Tenis Yoga Zumba MaquinasMusculacion" crlf crlf)
    (while (not(= (str-compare ?ans "NO") 0)) do
        (bind ?ans (ask-question-no-sensitive "Siguiente: " Andar Aquagym Baile BiciEstatica Correr Eliptica Jardineria Natacion Patinar Remo Senderismo Taichi Tenis Yoga Zumba MaquinasMusculacion NO))
        ;(printout t "respuesta: " ?ans crlf)
        (if (not(= (str-compare ?ans "NO") 0)) then
            (slot-insert$ [ejs_disp] favoritos 1 (symbol-to-instance-name ?ans))
        )
    )
    (printout t "Se han guardado sus ejercicios favoritos y se tendran en cuenta a la hora de crear su planificacion." crlf "Nota: No aseguramos que todos los ejercicios que ha puesto sean adecuados para su condicion, por lo tanto es posible que no se los recomendemos." crlf)
)

(defrule pregunta_repetidos "Quiere hacer ejs repetidos?"
    (edadCorrecta)
    =>
	(if (yes-or-no-p "Quiere intentar no repetir ejercicios durante la semana? (si/no)")
		then 
		(assert (repetidos FALSE))
		else                           
		(assert (repetidos TRUE))
	)
)

(defrule determinar-enfermedad
    (declare (salience -10)) ;per defecte el salience és 0 llavors serà la penúltima funció del mòdul que cridarem
	(not (enfermedad-cronica ?))
    (edadCorrecta)
    =>
	(if (yes-or-no-p "¿Padece alguna enfermedad o dolor? (si/no)")
		then 
		(assert (enfermedad-cronica TRUE))
		else                           
		(assert (enfermedad-cronica FALSE))
	)
)

(defrule salta_a_siguiente_modulo "cambia al modulo preguntas-enfermedades si tiene o al modulo de pregunta cotidianas cuando ya se han hecho todas las preguntas"
    (declare (salience -11)) ;per defecte el salience és 0 llavors serà l'última funció del mòdul que cridarem
    (enfermedad-cronica ?d)
    (edadCorrecta)
    =>
    (if (eq ?d TRUE) then
        (focus preguntas-enfermedades)
        else (printout t "Salta a preguntas cotidianas" crlf) (focus preguntas-cotidianas)
    )
)


; -------------------------------------------------------------------------------------------
; MODULO PREGUNTAS ENFERMEDADES
; -------------------------------------------------------------------------------------------
(defmodule preguntas-enfermedades 
    (import MAIN ?ALL)
    (import PREGUNTAS ?ALL)
    (export ?ALL) 
)
(defrule p_anemia "Pregunta anemia"
    ?x <- (object(is-a Persona))
    =>
    (bind ?ans (yes-or-no-p "¿Tiene anemia? (si/no) "))
    (if (eq ?ans TRUE) then
        (slot-insert$ ?x tiene_enfermedad 1 [Anemia])
    )
)

(defrule p_aneurisma "Pregunta aneurisma"
    ?x <- (object(is-a Persona))
    =>
    (bind ?ans (yes-or-no-p "¿Tiene aneurisma? (si/no) "))
    (if (eq ?ans TRUE) then
        (slot-insert$ ?x tiene_enfermedad 1 [Aneurisma])
        (assert (nivel-aer bajo))
    )
)

(defrule p_artrosis "Pregunta artrosis"
    ?x <- (object(is-a Persona))
    =>
    (bind ?ans (yes-or-no-p "¿Tiene artrosis? (si/no)"))
    (if (eq ?ans TRUE) then
        (slot-insert$ ?x tiene_enfermedad 1 [Artrosis])
    )
)

(defrule p_caidas "Pregunta caidas"
    ?x <- (object(is-a Persona))
    =>
    (bind ?ans (yes-or-no-p "¿Ha sufrido recientemente alguna caida que le reduzca la movilidad? (si/no) "))
    (if (eq ?ans TRUE) then
        (slot-insert$ ?x tiene_enfermedad 1 [Caidas])
        (assert (nivel-aer bajo))
    )
)

(defrule p_partes_del_cuerpo_rotas "Pregunta partes del cuerpo rotas"
    ?x <- (object(is-a Persona))
    =>
    (bind ?ans (yes-or-no-p "¿Se ha roto alguna extremidad o siente dolor intenso? (si/no) "))
    (if (eq ?ans TRUE) then
        (bind ?ans2 (yes-or-no-p "¿Tiene un brazo roto? (si/no) "))
        (if (eq ?ans2 TRUE) then (slot-insert$ ?x tiene_enfermedad 1 [BrazoRoto]))
        (bind ?ans3 (yes-or-no-p "¿Tiene una pierna rota? (si/no) "))
        (if (eq ?ans3 TRUE) then (slot-insert$ ?x tiene_enfermedad 1 [PiernaRota]))
    )
)

(defrule p_cancer "Pregunta cancer"
    ?x <- (object(is-a Persona))
    =>
    (bind ?ans (yes-or-no-p "¿Tiene o ha tenido en los ultimos dos años algun tipo de cancer? (si/no) "))
    (if (eq ?ans TRUE) then
        (bind ?ans2 (yes-or-no-p "¿Se le ha tratado con quimioterapia? (si/no) "))
        (slot-insert$ ?x tiene_enfermedad 1 [Cancer])
    )
)


(defrule p_cardiaca "Pregunta cardiaca"
    ?x <- (object(is-a Persona))
    =>
    (bind ?ans (yes-or-no-p "¿Tiene o ha tenido en los ultimos dos años algun tipo de enfermedad en el corazon? (si/no) "))
    (if (eq ?ans TRUE) then
        (bind ?ans2 (yes-or-no-p "¿Padece de hipertension? (si/no) "))
             (if (eq ?ans TRUE) then
                (slot-insert$ ?x tiene_enfermedad 1 [Hipertension])
            else (slot-insert$ ?x tiene_enfermedad 1 [Cardiaca]))
    )
)

(defrule p_coronaria "Pregunta coronaria"
    ?x <- (object(is-a Persona))
    =>
    (bind ?ans (yes-or-no-p "¿Tiene alguna enfermedad coronaria? (si/no) "))
    (if (eq ?ans TRUE) then
        (slot-insert$ ?x tiene_enfermedad 1 [Coronarias])
    )
)

(defrule p_depresion "Pregunta depresion"
    ?x <- (object(is-a Persona))
    =>
    (bind ?ans (yes-or-no-p "¿Actualmente tiene depresion? (si/no) "))
    (if (eq ?ans TRUE) then
        (slot-insert$ ?x tiene_enfermedad 1 [Depresion])
    )
)

(defrule p_diabetes "Pregunta diabetes"
    ?x <- (object(is-a Persona))
    =>
    (bind ?ans (yes-or-no-p "¿Tiene diabetes? (si/no) "))
    (if (eq ?ans TRUE) then
        (bind ?ans2 (yes-or-no-p "¿Es diabetes de tipo II? (si/no) "))
             (if (eq ?ans TRUE) then
                (slot-insert$ ?x tiene_enfermedad 1 [Diabetes2])
            )
    )
)

(defrule p_dislipemia "Pregunta dislipemia"
    ?x <- (object(is-a Persona))
    =>
    (bind ?ans (yes-or-no-p "¿Tiene dislipemia? (si/no) "))
    (if (eq ?ans TRUE) then
        (slot-insert$ ?x tiene_enfermedad 1 [Dislipemia])
    )
)

(defrule p_fragilidad "Pregunta fragilidad"
    ?x <- (object(is-a Persona))
    =>
    (bind ?ans (yes-or-no-p "¿Tiene los huesos fragiles o es propenso a romperselos con facilidad? (si/no) "))
    (if (eq ?ans TRUE) then
        (slot-insert$ ?x tiene_enfermedad 1 [Fragilidad])
        (assert (nivel-aer bajo))
    )
)

(defrule p_incontinenciaUrinaria "Pregunta incontinenciaUrinaria"
    ?x <- (object(is-a Persona))
    =>
    (bind ?ans (yes-or-no-p "¿Tiene incontinencia urinaria? (si/no) "))
    (if (eq ?ans TRUE) then
        (slot-insert$ ?x tiene_enfermedad 1 [IncontinenciaUrinaria])
    )
)

(defrule p_insuficienciaRenal "Pregunta insuficienciaRenal"
    ?x <- (object(is-a Persona))
    =>
    (bind ?ans (yes-or-no-p "¿Tiene insuficiencia renal? (si/no) "))
    (if (eq ?ans TRUE) then
        (slot-insert$ ?x tiene_enfermedad 1 [InsuficienciaRenal])
    )
)


(defrule p_osteoporosis "Pregunta osteoporosis"
    ?x <- (object(is-a Persona))
    =>
    (bind ?ans (yes-or-no-p "¿Padece osteoporosis? (si/no) "))
    (if (eq ?ans TRUE) then
        (slot-insert$ ?x tiene_enfermedad 1 [Osteoporosis])
    )
)


(defrule p_respiratoria "Pregunta respiratoria"
    ?x <- (object(is-a Persona))
    =>
    (bind ?ans (yes-or-no-p "¿Tiene algun tipo de enfermedad respiratoria que pueda afectar a su capacidad pulmonar? (si/no) "))
    (if (eq ?ans TRUE) then
        (slot-insert$ ?x tiene_enfermedad 1 [Respiratorias])
    )
)

(defrule salta_a_preguntas_cotidianas "cambia al modulo preguntas-cotidianas cuando ya se han hecho todas las preguntas"
    (declare (salience -10)) ;per defecte el salience és 0 llavors serà l'última funció del mòdul que cridarem
    =>
    (focus preguntas-cotidianas)
)

; -------------------------------------------------------------------------------------------
; MODULO PREGUNTAS COTIDIANAS
; -------------------------------------------------------------------------------------------
(defmodule preguntas-cotidianas 
    (import MAIN ?ALL)
    (import PREGUNTAS ?ALL)
    (export ?ALL) 
)


(deftemplate habilidades
    (slot equilibrio (type INTEGER) (default 0))
    (slot fuerza (type INTEGER) (default 0))
    (slot aerobico (type INTEGER) (default 0))
    (slot flexibilidad (type INTEGER) (default 0))
)

(deffacts habilidades-facts 
    (habilidades 
        (equilibrio 0)
        (fuerza 0)
        (aerobico 0)
        (flexibilidad 0)
    )
)

; función que retorna 1 o -1 en función de si el usuario responde si o no
(deffunction si-o-no-punts (?question)
   (bind ?response (ask-question ?question si no s n))
   (if (or (eq ?response si) (eq ?response s))
       then 1
       else -1)
)
    

(defrule p_mareos "Pregunta mareos"
    (not (pregunta1))
    ?h <- (habilidades (equilibrio ?equi))
    =>
    (bind ?ans (si-o-no-punts "¿Sufre mareos recurrentes al levantarse o al andar? (si/no) "))
    (modify ?h (equilibrio (- ?equi ?ans)))
    (bind ?val (- ?equi ?ans))
    (assert (pregunta1))
)

(defrule p_vertigos "Pregunta vertigos"
    (not (pregunta2))
    ?h <- (habilidades (equilibrio ?equi))
    =>
    (bind ?ans (si-o-no-punts "¿Padece vertigos o tiene algun problema auditivo? (si/no) "))
    (modify ?h (equilibrio (- ?equi ?ans)))
    (bind ?val (- ?equi ?ans))
    (assert (pregunta2))
)

(defrule p_andar "Pregunta andar escala borg"
    (not (pregunta3))
    ?h <- (habilidades (aerobico ?aer))
    =>
    (bind ?ans (pregunta-numerica "Del 0 al 3, ¿como calificaria el esfuerzo de andar durante 10 minutos? " 0 3))
    (modify ?h (aerobico (+ ?aer (- 1 ?ans)))) ;esfuerzo 0 suma un punto, 1 se queda igual y esfuerzo dos o tres resta 1 y 2 puntos respectivamente
    (assert (pregunta3))
    (bind ?val (- 1 ?ans))
)

(defrule p_escaleras "Pregunta escaleras"
    (not (pregunta4))
    ?h <- (habilidades (aerobico ?aer))
    =>
    (bind ?ans (si-o-no-punts "¿Le cuesta subir mas de dos tramos de escaleras? (si/no) "))
    (modify ?h (aerobico (- ?aer ?ans)))
    (assert (pregunta4))
)

(defrule p_fuerza "Pregunta fuerza"
    (not (pregunta5))
    ?h <- (habilidades (fuerza ?f))
    =>
    (bind ?ans (si-o-no-punts "¿Es capaz de levantar una garrafa de 3L de agua? (si/no) "))
    (modify ?h (fuerza (+ ?ans ?f)))
    (assert (pregunta5))
)

(defrule p_fuerza2 "Pregunta fuerza2"
    (not (pregunta6))
    ?h <- (habilidades (fuerza ?f))
    =>
    (bind ?ans (si-o-no-punts "¿Puede realizar una sentadilla sin ayuda de otras personas? (si/no) "))
    (modify ?h (fuerza (+ ?ans ?f)))
    (assert (pregunta6))
)

(defrule p_fuerza3 "Pregunta fuerza3"
    (not (pregunta7))
    ?h <- (habilidades (fuerza ?f))
    =>
    (bind ?ans (si-o-no-punts "¿Puede realizar una flexion sin ayuda de otras personas? (si/no) "))
    (modify ?h (fuerza (+ ?ans ?f)))
    (assert (pregunta7))
)

(defrule p_cigarros "Pregunta cigarros"
    (not (pregunta8))
    ?h <- (habilidades (aerobico ?aer))
    =>
    (bind ?ans (pregunta-numerica "¿Cuantos cigarros fuma al dia? (introduce un numero de 0 a 20) " 0 20))
    (if (> ?ans 10) then (modify ?h (aerobico (- ?aer 2))) ; si fuma mucho le quitamos dos puntos
    else (
        if (> ?ans 0) then (modify ?h (aerobico (- ?aer 1))) ; si fuma un poco quitamos solo 1
    ))                                                            ; si no fuma no damos ni quitamos puntos
   
    (assert (pregunta8))
)

(defrule p_asma "Pregunta asma"
    (not (pregunta9))
    ?h <- (habilidades (aerobico ?aer))
    =>
    (bind ?ans (si-o-no-punts "¿Padece asma? (si/no) "))
    (modify ?h (aerobico (- ?aer ?ans)))
    (assert (pregunta9))
)

(defrule p_gripes "Pregunta gripes"
    (not (pregunta10))
    ?h <- (habilidades (aerobico ?aer))
    =>
    (bind ?ans (si-o-no-punts "¿Le afectan intensamente las gripes hasta el punto de notar la falta de aire? (si/no) "))
    (modify ?h (aerobico (- ?aer ?ans)))
    (assert (pregunta10))
)

(defrule p_flexibilidad1 "Pregunta flexibilidad1"
    (not (pregunta11))
    ?h <- (habilidades (flexibilidad ?flex))
    =>
    (bind ?ans (si-o-no-punts "¿Puede tocarse los pies con las puntas de los dedos manteniendo las piernas estiradas? (si/no) "))
    (modify ?h (flexibilidad (+ ?ans ?flex)))
    (assert (pregunta11))
)

(defrule p_flexibilidad2 "Pregunta flexibilidad2"
    (not (pregunta12))
    ?h <- (habilidades (flexibilidad ?flex))
    =>
    (bind ?ans (si-o-no-punts "¿Tiene completa movilidad de brazos y piernas (no padece ninguna limitacion)? (si/no) "))
    (modify ?h (flexibilidad (+ ?ans ?flex)))
    (assert (pregunta12))
)

(defrule p_flexibilidad3 "Pregunta flexibilidad3"
    (not (pregunta13))
    ?h <- (habilidades (flexibilidad ?flex))
    =>
    (bind ?ans (si-o-no-punts "¿Si se encuentra de pie puede recoger un objeto que se haya caido al suelo sin agarrarse a ningun soporte? (si/no) "))
    (modify ?h (flexibilidad (+ ?ans ?flex)))
    (assert (pregunta13))
)




(defrule salta_a_planificacion "cambia al modulo PLANIFICACION cuando ya se han hecvho todas las preguntas"
    (declare (salience -10)) ;per defecte el salience és 0 llavors serà l'última funció del mòdul que cridarem
    (pregunta1)
    =>
    (focus PLANIFICACION)
)


; -------------------------------------------------------------------------------------------
; MODULO CREACIÓN PLANIFICACIÓN Y SESIONES
; -------------------------------------------------------------------------------------------
(defmodule PLANIFICACION
    (import MAIN ?ALL)
    (import PREGUNTAS ?ALL)
    (import preguntas-cotidianas ?ALL)
    (export ?ALL)
)

(defrule llena_ejs_disp "llena la instancia de ejercicios_disponibles con todos los ejercicios y los mejores en funcion de las enfermedades que tiene"
    ?p <- (object (is-a Persona))
    ?e <- (object (is-a ejercicios_disponibles))
    =>
    ;(printout t "llenando ejs disponibles" crlf)
    (bind ?disp (find-all-instances ((?x Ejercicio)) TRUE))
    
    (bind ?enfs (send ?p get-tiene_enfermedad))
    (loop-for-count (?i 1 (length$ ?enfs)) do
        (bind ?enfermedad (nth$ ?i ?enfs))
        (bind ?prohibidos (send ?enfermedad get-no_puede_hacer))
        ;(bind ?recomendad (send ?enfermedad get-ejercicio_recomendado))
        (loop-for-count (?j 1 (length$ ?prohibidos)) do     ;para cada ejercicio prohibido, si estaba en ejs disponibles o recomendados lo quitamos
            (bind ?proj (nth$ ?j ?prohibidos))
            (if (not (eq (member$ ?proj ?disp) FALSE)) then ;si esta en disp lo quitamos
                (bind ?disp (delete-member$ ?disp ?proj))
            )
            ;(if (not (eq (member$ ?proj ?recs) FALSE)) then ;si esta en recs lo quitamos
            ;    (delete-member$ ?disp ?proj)
            ;)
        )
    )
    ; ejercicios recomendados
    ;(bind ?recs ?disp)
    (loop-for-count (?i 1 (length$ ?enfs)) do
        (bind ?enfermedad (nth$ ?i ?enfs))
        (bind ?recomendad (send ?enfermedad get-ejercicio_recomendado))
        (loop-for-count (?j 1 (length$ ?disp)) do     ;para cada ejercicio recomendado, si esta en disponibles lo añadimos a los recomendados
            (bind ?recj (nth$ ?j ?disp))
            (if (not (eq (member$ ?recj ?recomendad) FALSE)) then
                ;(printout t "ej: " ?recj " esta disp?" (eq (member$ ?recj ?recomendad) FALSE) crlf)
                (slot-insert$ ?e recomendados 1 ?recj)
                ;(bind ?recs (insert$ ?recs 1 ?recj))
            )
        )
    )
    ;(printout t "Ejs llenados" crlf "Disp: " ?disp crlf crlf "Recs: " (send ?e get-recomendados) crlf)
    (send ?e put-disponibles ?disp)      ;ejs_disp tiene como disponibles los ejercicios que puede hacer la persona
    ;(send ?e put-recomendados ?recs)      ;ejs_disp tiene como recomendados los ejercicios recomendados para la persona en funcion de sus enfermedades
    (assert (ejs_agregados))
)

(defrule num-sesiones-sedentario "Num sesiones solo sedentario"
(not (dias ?))
(disponibilidad ?dis)
?p <- (object(is-a Persona))
(sedentario)
=>
(if (< ?dis 3) then 
    (assert (dias ?dis))
    else (assert (dias 3))
    )
)

(defrule num-sesiones-activo "Num sesiones solo activo"
(not (dias ?))
(disponibilidad ?dis)
?p <- (object(is-a Persona))
(activo)
=>
(if (< ?dis 5) then 
    (assert (dias ?dis))
    else (assert (dias 5))
    )
)

(defrule num-sesiones-muy_activo "Num sesiones solo muyactivo"
(not (dias ?))
(disponibilidad ?dis)
?p <- (object(is-a Persona))
(muy_activo)
=>
(assert (dias ?dis))
)

(defrule crea-sesiones "Creacion de las sesiones"
    (ejs_agregados)
    (dias ?d)
    (repetidos ?r)
    ?p <- (object(is-a Persona))
    ?plan <- (object(is-a Planificacion))
    ?heq <- (habilidades (equilibrio ?equi))
    ?hfu <- (habilidades (equilibrio ?fuer))
    =>
    (bind ?disp (send [ejs_disp] get-disponibles))
    (bind ?rec (send [ejs_disp] get-recomendados))
    (bind ?fav (send [ejs_disp] get-favoritos))
    (bind ?odi (send [ejs_disp] get-odiados))
    (bind ?totalPartes (find-all-instances ((?f ParteDelCuerpo)) TRUE))
    (bind ?partes (find-all-instances ((?f ParteDelCuerpo)) FALSE))
    (bind ?ejs_no_hechos ?disp)
    (if (eq ?r TRUE) then
        (bind ?ejs_no_hechos (insert$ ?ejs_no_hechos 1000 ?disp)) ;permetem que cada exercici es faci 2 cops com a molt (excepte si no en queden mes)
    )

    (loop-for-count (?i 1 ?d)
        (bind ?sesion (make-instance (sym-cat sesion- (gensym)) of Sesion))
        
        (printout t "Creando sesion " ?i crlf)
        ;intentem primer afegir un aerobic que no hagi fet aquesta setmana.
        (bind ?ejs_aerobico_rec_fav (find-all-instances ((?f Aerobico)) (and (member ?f ?rec) (member ?f ?fav) (member ?f ?ejs_no_hechos))))
        (if (not (eq (length$ ?ejs_aerobico_rec_fav) 0)) then
            (bind ?rand (+ (mod (random) (length$ ?ejs_aerobico_rec_fav)) 1))
            (bind ?ej (nth$ ?rand ?ejs_aerobico_rec_fav))
            else
            (bind ?ejs_aerobico_rec (find-all-instances ((?f Aerobico)) (and (member ?f ?rec) (member ?f ?ejs_no_hechos))))
            (if (not (eq (length$ ?ejs_aerobico_rec) 0)) then
                (bind ?rand (+ (mod (random) (length$ ?ejs_aerobico_rec)) 1))
                (bind ?ej (nth$ ?rand ?ejs_aerobico_rec))
                else 
                (bind ?ejs_aerobico_disp_fav (find-all-instances ((?f Aerobico)) (and (member ?f ?disp) (member ?f ?fav) (member ?f ?ejs_no_hechos))))
                (if (not (eq (length$ ?ejs_aerobico_disp_fav) 0)) then
                    (bind ?rand (+ (mod (random) (length$ ?ejs_aerobico_disp_fav)) 1))
                    (bind ?ej (nth$ ?rand ?ejs_aerobico_disp_fav))
                    else
                    (bind ?ejs_aerobico_disp (find-all-instances ((?f Aerobico)) (and (member ?f ?disp) (member ?f ?ejs_no_hechos))))
                    (if (not (eq (length$ ?ejs_aerobico_disp) 0)) then
                        (bind ?rand (+ (mod (random) (length$ ?ejs_aerobico_disp)) 1))
                        (bind ?ej (nth$ ?rand ?ejs_aerobico_disp))
                    )
                )
            )
        )
        (if (not (eq ?ej nil)) then
            ;(printout t "ej: " ?ej crlf "llista: " ?ejs_no_hechos crlf)
            (if (not (eq (member$ ?ej ?ejs_no_hechos) FALSE)) then
                (bind ?ejs_no_hechos (delete$ ?ejs_no_hechos (member$ ?ej ?ejs_no_hechos) (member$ ?ej ?ejs_no_hechos))) ;eliminem la primera aparicio de l'exercici a ?ejs_no_hechos
            )
            ;(printout t "llista amb eliminat: " ?ejs_no_hechos crlf)
        )
        ;si no nhi hvia cap afegeix un q ja hagi fet
        (if (eq ?ej nil) then
            ;afegeix un exercici aerobic i un estirament que l'exerciti. Primer un recomanat i preferit, si no nhi ha cap un recomanat, i si no un disponible (taichi, aquagym, andar, biciest sempre estan disponibles)
            (bind ?ejs_aerobico_rec_fav (find-all-instances ((?f Aerobico)) (and (member ?f ?rec) (member ?f ?fav))))
            (if (not (eq (length$ ?ejs_aerobico_rec_fav) 0)) then
                (bind ?rand (+ (mod (random) (length$ ?ejs_aerobico_rec_fav)) 1))
                (bind ?ej (nth$ ?rand ?ejs_aerobico_rec_fav))
                else
                (bind ?ejs_aerobico_rec (find-all-instances ((?f Aerobico)) (member ?f ?rec)))
                (if (not (eq (length$ ?ejs_aerobico_rec) 0)) then
                    (bind ?rand (+ (mod (random) (length$ ?ejs_aerobico_rec)) 1))
                    (bind ?ej (nth$ ?rand ?ejs_aerobico_rec))
                    else 
                    (bind ?ejs_aerobico_disp_fav (find-all-instances ((?f Aerobico)) (and (member ?f ?disp) (member ?f ?fav))))
                    (if (not (eq (length$ ?ejs_aerobico_disp_fav) 0)) then
                        (bind ?rand (+ (mod (random) (length$ ?ejs_aerobico_disp_fav)) 1))
                        (bind ?ej (nth$ ?rand ?ejs_aerobico_disp_fav))
                        else
                        (bind ?ejs_aerobico_disp (find-all-instances ((?f Aerobico)) (member ?f ?disp)))
                        (bind ?rand (+ (mod (random) (length$ ?ejs_aerobico_disp)) 1))
                        (bind ?ej (nth$ ?rand ?ejs_aerobico_disp))
                    )
                )
            )
        )
        ;ara afegim un exercici de calentament(flexibilitat) que exerciti el mateix que l'aerobic. Si no nhi ha cap un aleatori.
        (bind ?partes (insert$ ?partes 100 (send ?ej get-ejercita)))
        ;(printout t "Ejercicio: " ?ej crlf)
        (if (not (eq (length$ (send ?ej get-ejercita)) 0)) then
            (bind ?ejs_calentamiento (find-all-instances ((?f Flexibilidad)) (and (member (send ?f get-ejercita) (send ?ej get-ejercita)) (member ?f ?disp) (member ?f ?ejs_no_hechos))))
            (if (eq (length$ ?ejs_calentamiento) 0) then 
                (bind ?ejs_calentamiento (find-all-instances ((?f Flexibilidad)) (and (member (send ?f get-ejercita) (send ?ej get-ejercita)) (member ?f ?disp))))
            )
            else
            (bind ?ejs_calentamiento (find-all-instances ((?f Flexibilidad)) (and (member ?f ?disp) (member ?f ?ejs_no_hechos))))
            (if (eq (length$ ?ejs_calentamiento) 0) then 
                (bind ?ejs_calentamiento (find-all-instances ((?f Flexibilidad)) (member ?f ?disp)))
            )
        )
        (bind ?rand (+ (mod (random) (length$ ?ejs_calentamiento)) 1))
        (bind ?ej_cal (nth$ ?rand ?ejs_calentamiento))

        ;eliminem la primera aparicio de l'estirament a ?ejs_no_hechos si existia
        (if (and (not (eq ?ej_cal nil)) (not (eq (member$ ?ej_cal ?ejs_no_hechos) FALSE))) then
            (bind ?ejs_no_hechos (delete$ ?ejs_no_hechos (member$ ?ej_cal ?ejs_no_hechos) (member$ ?ej_cal ?ejs_no_hechos))) 
        )
        ;i finalment afegim un altre de flexibilitat com a finalitzacio.
        (bind ?partes (insert$ ?partes 100 (send ?ej get-ejercita)))
        ;(printout t "Ejercicio: " ?ej crlf)
        (if (not (eq (length$ (send ?ej get-ejercita)) 0)) then
            (bind ?ejs_finalizacion (find-all-instances ((?f Flexibilidad)) (and (member (send ?f get-ejercita) (send ?ej get-ejercita)) (member ?f ?disp) (member ?f ?ejs_no_hechos))))
            (if (eq (length$ ?ejs_finalizacion) 0) then 
                (bind ?ejs_finalizacion (find-all-instances ((?f Flexibilidad)) (and (member (send ?f get-ejercita) (send ?ej get-ejercita)) (member ?f ?disp))))
            )
            else
            (bind ?ejs_finalizacion (find-all-instances ((?f Flexibilidad)) (and (member ?f ?disp) (member ?f ?ejs_no_hechos))))
            (if (eq (length$ ?ejs_finalizacion) 0) then 
                (bind ?ejs_finalizacion (find-all-instances ((?f Flexibilidad)) (member ?f ?disp)))
            )
        )
        (bind ?rand (+ (mod (random) (length$ ?ejs_finalizacion)) 1))
        (bind ?ej_fin (nth$ ?rand ?ejs_finalizacion))

        ;eliminem la primera aparicio de l'estirament a ?ejs_no_hechos si existia
        (if (and (not (eq ?ej_fin nil)) (not (eq (member$ ?ej_fin ?ejs_no_hechos) FALSE))) then
            (bind ?ejs_no_hechos (delete$ ?ejs_no_hechos (member$ ?ej_fin ?ejs_no_hechos) (member$ ?ej_fin ?ejs_no_hechos))) 
        )
        (slot-insert$ ?sesion contiene 100 ?ej_cal) ;els afegim al final del que portem de sessio
        (slot-insert$ ?sesion contiene 100 ?ej)
        (slot-insert$ ?sesion contiene 100 ?ej_fin)
        (slot-insert$ ?sesion contiene 100 [Reposo])




        
        ;afegim un de fuerza amb calentament
        ;intentem primer afegir un aerobic que no hagi fet aquesta setmana.
        (bind ?ejs_Fuerza_rec_fav (find-all-instances ((?f Fuerza)) (and (member ?f ?rec) (member ?f ?fav) (member ?f ?ejs_no_hechos))))
        (if (not (eq (length$ ?ejs_Fuerza_rec_fav) 0)) then
            (bind ?rand (+ (mod (random) (length$ ?ejs_Fuerza_rec_fav)) 1))
            (bind ?ej (nth$ ?rand ?ejs_Fuerza_rec_fav))
            else
            (bind ?ejs_Fuerza_rec (find-all-instances ((?f Fuerza)) (and (member ?f ?rec) (member ?f ?ejs_no_hechos))))
            (if (not (eq (length$ ?ejs_Fuerza_rec) 0)) then
                (bind ?rand (+ (mod (random) (length$ ?ejs_Fuerza_rec)) 1))
                (bind ?ej (nth$ ?rand ?ejs_Fuerza_rec))
                else 
                (bind ?ejs_Fuerza_disp_fav (find-all-instances ((?f Fuerza)) (and (member ?f ?disp) (member ?f ?fav) (member ?f ?ejs_no_hechos))))
                (if (not (eq (length$ ?ejs_Fuerza_disp_fav) 0)) then
                    (bind ?rand (+ (mod (random) (length$ ?ejs_Fuerza_disp_fav)) 1))
                    (bind ?ej (nth$ ?rand ?ejs_Fuerza_disp_fav))
                    else
                    (bind ?ejs_Fuerza_disp (find-all-instances ((?f Fuerza)) (and (member ?f ?disp) (member ?f ?ejs_no_hechos))))
                    (if (not (eq (length$ ?ejs_Fuerza_disp) 0)) then
                        (bind ?rand (+ (mod (random) (length$ ?ejs_Fuerza_disp)) 1))
                        (bind ?ej (nth$ ?rand ?ejs_Fuerza_disp))
                    )
                )
            )
        )
        (if (not (eq ?ej nil)) then
            ;(printout t "ej: " ?ej crlf "llista: " ?ejs_no_hechos crlf)
(if (not    (eq (member$ ?ej ?ejs_no_hechos) FALSE)) then
                (bind ?ejs_no_hechos (delete$ ?ejs_no_hechos (member$ ?ej ?ejs_no_hechos) (member$ ?ej ?ejs_no_hechos))) ;eliminem la primera aparicio de l'exercici a ?ejs_no_hechos
            )            ;(printout t "llista amb eliminat: " ?ejs_no_hechos crlf)
        )
        ;si no nhi hvia cap afegeix un q ja hagi fet
        (if (eq ?ej nil) then
            ;afegeix un exercici aerobic i un estirament que l'exerciti. Primer un recomanat i preferit, si no nhi ha cap un recomanat, i si no un disponible (taichi, aquagym, andar, biciest sempre estan disponibles)
            (bind ?ejs_Fuerza_rec_fav (find-all-instances ((?f Fuerza)) (and (member ?f ?rec) (member ?f ?fav))))
            (if (not (eq (length$ ?ejs_Fuerza_rec_fav) 0)) then
                (bind ?rand (+ (mod (random) (length$ ?ejs_Fuerza_rec_fav)) 1))
                (bind ?ej (nth$ ?rand ?ejs_Fuerza_rec_fav))
                else
                (bind ?ejs_Fuerza_rec (find-all-instances ((?f Fuerza)) (member ?f ?rec)))
                (if (not (eq (length$ ?ejs_Fuerza_rec) 0)) then
                    (bind ?rand (+ (mod (random) (length$ ?ejs_Fuerza_rec)) 1))
                    (bind ?ej (nth$ ?rand ?ejs_Fuerza_rec))
                    else 
                    (bind ?ejs_Fuerza_disp_fav (find-all-instances ((?f Fuerza)) (and (member ?f ?disp) (member ?f ?fav))))
                    (if (not (eq (length$ ?ejs_Fuerza_disp_fav) 0)) then
                        (bind ?rand (+ (mod (random) (length$ ?ejs_Fuerza_disp_fav)) 1))
                        (bind ?ej (nth$ ?rand ?ejs_Fuerza_disp_fav))
                        else
                        (bind ?ejs_Fuerza_disp (find-all-instances ((?f Fuerza)) (member ?f ?disp)))
                        (bind ?rand (+ (mod (random) (length$ ?ejs_Fuerza_disp)) 1))
                        (bind ?ej (nth$ ?rand ?ejs_Fuerza_disp))
                    )
                )
            )
        )      
        ;ara afegim un exercici de calentament(flexibilitat) que exerciti el mateix que l'aerobic. Si no nhi ha cap un aleatori.
        (bind ?partes (insert$ ?partes 100 (send ?ej get-ejercita)))
        ;(printout t "Ejercicio: " ?ej crlf)
        (if (not (eq (length$ (send ?ej get-ejercita)) 0)) then
            (bind ?ejs_calentamiento (find-all-instances ((?f Flexibilidad)) (and (member (send ?f get-ejercita) (send ?ej get-ejercita)) (member ?f ?disp) (member ?f ?ejs_no_hechos))))
            (if (eq (length$ ?ejs_calentamiento) 0) then 
                (bind ?ejs_calentamiento (find-all-instances ((?f Flexibilidad)) (and (member (send ?f get-ejercita) (send ?ej get-ejercita)) (member ?f ?disp))))
            )
            else
            (bind ?ejs_calentamiento (find-all-instances ((?f Flexibilidad)) (and (member ?f ?disp) (member ?f ?ejs_no_hechos))))
            (if (eq (length$ ?ejs_calentamiento) 0) then 
                (bind ?ejs_calentamiento (find-all-instances ((?f Flexibilidad)) (member ?f ?disp)))
            )
        )
        (bind ?rand (+ (mod (random) (length$ ?ejs_calentamiento)) 1))
        (bind ?ej_cal (nth$ ?rand ?ejs_calentamiento))

        ;eliminem la primera aparicio de l'estirament a ?ejs_no_hechos si existia
        (if (and (not (eq ?ej_cal nil)) (not (eq (member$ ?ej_cal ?ejs_no_hechos) FALSE))) then
            (bind ?ejs_no_hechos (delete$ ?ejs_no_hechos (member$ ?ej_cal ?ejs_no_hechos) (member$ ?ej_cal ?ejs_no_hechos))) 
        )

        (slot-insert$ ?sesion contiene 100 ?ej_cal) ;els afegim al final del que portem de sessio
        (slot-insert$ ?sesion contiene 100 ?ej)
        (slot-insert$ ?sesion contiene 100 [Reposo])








        ;afegim un de Equilibrio amb calentament
        ;intentem primer afegir un aerobic que no hagi fet aquesta setmana.
        (bind ?ejs_Equilibrio_rec_fav (find-all-instances ((?f Equilibrio)) (and (member ?f ?rec) (member ?f ?fav) (member ?f ?ejs_no_hechos))))
        (if (not (eq (length$ ?ejs_Equilibrio_rec_fav) 0)) then
            (bind ?rand (+ (mod (random) (length$ ?ejs_Equilibrio_rec_fav)) 1))
            (bind ?ej (nth$ ?rand ?ejs_Equilibrio_rec_fav))
            else
            (bind ?ejs_Equilibrio_rec (find-all-instances ((?f Equilibrio)) (and (member ?f ?rec) (member ?f ?ejs_no_hechos))))
            (if (not (eq (length$ ?ejs_Equilibrio_rec) 0)) then
                (bind ?rand (+ (mod (random) (length$ ?ejs_Equilibrio_rec)) 1))
                (bind ?ej (nth$ ?rand ?ejs_Equilibrio_rec))
                else 
                (bind ?ejs_Equilibrio_disp_fav (find-all-instances ((?f Equilibrio)) (and (member ?f ?disp) (member ?f ?fav) (member ?f ?ejs_no_hechos))))
                (if (not (eq (length$ ?ejs_Equilibrio_disp_fav) 0)) then
                    (bind ?rand (+ (mod (random) (length$ ?ejs_Equilibrio_disp_fav)) 1))
                    (bind ?ej (nth$ ?rand ?ejs_Equilibrio_disp_fav))
                    else
                    (bind ?ejs_Equilibrio_disp (find-all-instances ((?f Equilibrio)) (and (member ?f ?disp) (member ?f ?ejs_no_hechos))))
                    (if (not (eq (length$ ?ejs_Equilibrio_disp) 0)) then
                        (bind ?rand (+ (mod (random) (length$ ?ejs_Equilibrio_disp)) 1))
                        (bind ?ej (nth$ ?rand ?ejs_Equilibrio_disp))
                    )
                )
            )
        )
        (if (not (eq ?ej nil)) then
            ;(printout t "ej: " ?ej crlf "llista: " ?ejs_no_hechos crlf)
            (if (not (eq (member$ ?ej ?ejs_no_hechos) FALSE)) then
                (bind ?ejs_no_hechos (delete$ ?ejs_no_hechos (member$ ?ej ?ejs_no_hechos) (member$ ?ej ?ejs_no_hechos))) ;eliminem la primera aparicio de l'exercici a ?ejs_no_hechos
            )
            ;(printout t "llista amb eliminat: " ?ejs_no_hechos crlf)
        )
        ;si no nhi hvia cap afegeix un q ja hagi fet
        (if (eq ?ej nil) then
            ;afegeix un exercici aerobic i un estirament que l'exerciti. Primer un recomanat i preferit, si no nhi ha cap un recomanat, i si no un disponible (taichi, aquagym, andar, biciest sempre estan disponibles)
            (bind ?ejs_Equilibrio_rec_fav (find-all-instances ((?f Equilibrio)) (and (member ?f ?rec) (member ?f ?fav))))
            (if (not (eq (length$ ?ejs_Equilibrio_rec_fav) 0)) then
                (bind ?rand (+ (mod (random) (length$ ?ejs_Equilibrio_rec_fav)) 1))
                (bind ?ej (nth$ ?rand ?ejs_Equilibrio_rec_fav))
                else
                (bind ?ejs_Equilibrio_rec (find-all-instances ((?f Equilibrio)) (member ?f ?rec)))
                (if (not (eq (length$ ?ejs_Equilibrio_rec) 0)) then
                    (bind ?rand (+ (mod (random) (length$ ?ejs_Equilibrio_rec)) 1))
                    (bind ?ej (nth$ ?rand ?ejs_Equilibrio_rec))
                    else 
                    (bind ?ejs_Equilibrio_disp_fav (find-all-instances ((?f Equilibrio)) (and (member ?f ?disp) (member ?f ?fav))))
                    (if (not (eq (length$ ?ejs_Equilibrio_disp_fav) 0)) then
                        (bind ?rand (+ (mod (random) (length$ ?ejs_Equilibrio_disp_fav)) 1))
                        (bind ?ej (nth$ ?rand ?ejs_Equilibrio_disp_fav))
                        else
                        (bind ?ejs_Equilibrio_disp (find-all-instances ((?f Equilibrio)) (member ?f ?disp)))
                        (bind ?rand (+ (mod (random) (length$ ?ejs_Equilibrio_disp)) 1))
                        (bind ?ej (nth$ ?rand ?ejs_Equilibrio_disp))
                    )
                )
            )
        )      
        ;ara afegim un exercici de calentament(flexibilitat) que exerciti el mateix que l'aerobic. Si no nhi ha cap un aleatori.
        (bind ?partes (insert$ ?partes 100 (send ?ej get-ejercita)))
        ;(printout t "Ejercicio: " ?ej crlf)
        (if (not (eq (length$ (send ?ej get-ejercita)) 0)) then
            (bind ?ejs_calentamiento (find-all-instances ((?f Flexibilidad)) (and (member (send ?f get-ejercita) (send ?ej get-ejercita)) (member ?f ?disp) (member ?f ?ejs_no_hechos))))
            (if (eq (length$ ?ejs_calentamiento) 0) then 
                (bind ?ejs_calentamiento (find-all-instances ((?f Flexibilidad)) (and (member (send ?f get-ejercita) (send ?ej get-ejercita)) (member ?f ?disp))))
            )
            else
            (bind ?ejs_calentamiento (find-all-instances ((?f Flexibilidad)) (and (member ?f ?disp) (member ?f ?ejs_no_hechos))))
            (if (eq (length$ ?ejs_calentamiento) 0) then 
                (bind ?ejs_calentamiento (find-all-instances ((?f Flexibilidad)) (member ?f ?disp)))
            )
        )
        (bind ?rand (+ (mod (random) (length$ ?ejs_calentamiento)) 1))
        (bind ?ej_cal (nth$ ?rand ?ejs_calentamiento))

        ;eliminem la primera aparicio de l'estirament a ?ejs_no_hechos si existia
        (if (and (not (eq ?ej_cal nil)) (not (eq (member$ ?ej_cal ?ejs_no_hechos) FALSE))) then
            (bind ?ejs_no_hechos (delete$ ?ejs_no_hechos (member$ ?ej_cal ?ejs_no_hechos) (member$ ?ej_cal ?ejs_no_hechos))) 
        )

        (slot-insert$ ?sesion contiene 100 ?ej_cal) ;els afegim al final del que portem de sessio
        (slot-insert$ ?sesion contiene 100 ?ej)
        (slot-insert$ ?sesion contiene 100 [Reposo])








        (if (< ?fuer 1) then      ;si tiene 0 o -1 de fuerza le añadimos otro de fuerza
            ;afegim un de fuerza amb calentament
            ;intentem primer afegir un aerobic que no hagi fet aquesta setmana.
            (bind ?ejs_Fuerza_rec_fav (find-all-instances ((?f Fuerza)) (and (member ?f ?rec) (member ?f ?fav) (member ?f ?ejs_no_hechos))))
            (if (not (eq (length$ ?ejs_Fuerza_rec_fav) 0)) then
                (bind ?rand (+ (mod (random) (length$ ?ejs_Fuerza_rec_fav)) 1))
                (bind ?ej (nth$ ?rand ?ejs_Fuerza_rec_fav))
                else
                (bind ?ejs_Fuerza_rec (find-all-instances ((?f Fuerza)) (and (member ?f ?rec) (member ?f ?ejs_no_hechos))))
                (if (not (eq (length$ ?ejs_Fuerza_rec) 0)) then
                    (bind ?rand (+ (mod (random) (length$ ?ejs_Fuerza_rec)) 1))
                    (bind ?ej (nth$ ?rand ?ejs_Fuerza_rec))
                    else 
                    (bind ?ejs_Fuerza_disp_fav (find-all-instances ((?f Fuerza)) (and (member ?f ?disp) (member ?f ?fav) (member ?f ?ejs_no_hechos))))
                    (if (not (eq (length$ ?ejs_Fuerza_disp_fav) 0)) then
                        (bind ?rand (+ (mod (random) (length$ ?ejs_Fuerza_disp_fav)) 1))
                        (bind ?ej (nth$ ?rand ?ejs_Fuerza_disp_fav))
                        else
                        (bind ?ejs_Fuerza_disp (find-all-instances ((?f Fuerza)) (and (member ?f ?disp) (member ?f ?ejs_no_hechos))))
                        (if (not (eq (length$ ?ejs_Fuerza_disp) 0)) then
                            (bind ?rand (+ (mod (random) (length$ ?ejs_Fuerza_disp)) 1))
                            (bind ?ej (nth$ ?rand ?ejs_Fuerza_disp))
                        )
                    )
                )
            )
            (if (not (eq ?ej nil)) then
                ;(printout t "ej: " ?ej crlf "llista: " ?ejs_no_hechos crlf)
                (if (not (eq (member$ ?ej ?ejs_no_hechos) FALSE)) then
                    (bind ?ejs_no_hechos (delete$ ?ejs_no_hechos (member$ ?ej ?ejs_no_hechos) (member$ ?ej ?ejs_no_hechos))) ;eliminem la primera aparicio de l'exercici a ?ejs_no_hechos
                )                ;(printout t "llista amb eliminat: " ?ejs_no_hechos crlf)
            )
            ;si no nhi hvia cap afegeix un q ja hagi fet
            (if (eq ?ej nil) then
                ;afegeix un exercici aerobic i un estirament que l'exerciti. Primer un recomanat i preferit, si no nhi ha cap un recomanat, i si no un disponible (taichi, aquagym, andar, biciest sempre estan disponibles)
                (bind ?ejs_Fuerza_rec_fav (find-all-instances ((?f Fuerza)) (and (member ?f ?rec) (member ?f ?fav))))
                (if (not (eq (length$ ?ejs_Fuerza_rec_fav) 0)) then
                    (bind ?rand (+ (mod (random) (length$ ?ejs_Fuerza_rec_fav)) 1))
                    (bind ?ej (nth$ ?rand ?ejs_Fuerza_rec_fav))
                    else
                    (bind ?ejs_Fuerza_rec (find-all-instances ((?f Fuerza)) (member ?f ?rec)))
                    (if (not (eq (length$ ?ejs_Fuerza_rec) 0)) then
                        (bind ?rand (+ (mod (random) (length$ ?ejs_Fuerza_rec)) 1))
                        (bind ?ej (nth$ ?rand ?ejs_Fuerza_rec))
                        else 
                        (bind ?ejs_Fuerza_disp_fav (find-all-instances ((?f Fuerza)) (and (member ?f ?disp) (member ?f ?fav))))
                        (if (not (eq (length$ ?ejs_Fuerza_disp_fav) 0)) then
                            (bind ?rand (+ (mod (random) (length$ ?ejs_Fuerza_disp_fav)) 1))
                            (bind ?ej (nth$ ?rand ?ejs_Fuerza_disp_fav))
                            else
                            (bind ?ejs_Fuerza_disp (find-all-instances ((?f Fuerza)) (member ?f ?disp)))
                            (bind ?rand (+ (mod (random) (length$ ?ejs_Fuerza_disp)) 1))
                            (bind ?ej (nth$ ?rand ?ejs_Fuerza_disp))
                        )
                    )
                )
            )      
            ;ara afegim un exercici de calentament(flexibilitat) que exerciti el mateix que l'aerobic. Si no nhi ha cap un aleatori.
            (bind ?partes (insert$ ?partes 100 (send ?ej get-ejercita)))
            ;(printout t "Ejercicio: " ?ej crlf)
            (if (not (eq (length$ (send ?ej get-ejercita)) 0)) then
                (bind ?ejs_calentamiento (find-all-instances ((?f Flexibilidad)) (and (member (send ?f get-ejercita) (send ?ej get-ejercita)) (member ?f ?disp) (member ?f ?ejs_no_hechos))))
                (if (eq (length$ ?ejs_calentamiento) 0) then 
                    (bind ?ejs_calentamiento (find-all-instances ((?f Flexibilidad)) (and (member (send ?f get-ejercita) (send ?ej get-ejercita)) (member ?f ?disp))))
                )
                else
                (bind ?ejs_calentamiento (find-all-instances ((?f Flexibilidad)) (and (member ?f ?disp) (member ?f ?ejs_no_hechos))))
                (if (eq (length$ ?ejs_calentamiento) 0) then 
                    (bind ?ejs_calentamiento (find-all-instances ((?f Flexibilidad)) (member ?f ?disp)))
                )
            )
            (bind ?rand (+ (mod (random) (length$ ?ejs_calentamiento)) 1))
            (bind ?ej_cal (nth$ ?rand ?ejs_calentamiento))

            ;eliminem la primera aparicio de l'estirament a ?ejs_no_hechos si existia
            (if (and (not (eq ?ej_cal nil)) (not (eq (member$ ?ej_cal ?ejs_no_hechos) FALSE))) then
                (bind ?ejs_no_hechos (delete$ ?ejs_no_hechos (member$ ?ej_cal ?ejs_no_hechos) (member$ ?ej_cal ?ejs_no_hechos))) 
            )

            (slot-insert$ ?sesion contiene 100 ?ej_cal) ;els afegim al final del que portem de sessio
            (slot-insert$ ?sesion contiene 100 ?ej)
            (slot-insert$ ?sesion contiene 100 [Reposo])
        )



        (if (< ?equi 1) then
            ;afegim un de Equilibrio amb calentament
            ;intentem primer afegir un aerobic que no hagi fet aquesta setmana.
            (bind ?ejs_Equilibrio_rec_fav (find-all-instances ((?f Equilibrio)) (and (member ?f ?rec) (member ?f ?fav) (member ?f ?ejs_no_hechos))))
            (if (not (eq (length$ ?ejs_Equilibrio_rec_fav) 0)) then
                (bind ?rand (+ (mod (random) (length$ ?ejs_Equilibrio_rec_fav)) 1))
                (bind ?ej (nth$ ?rand ?ejs_Equilibrio_rec_fav))
                else
                (bind ?ejs_Equilibrio_rec (find-all-instances ((?f Equilibrio)) (and (member ?f ?rec) (member ?f ?ejs_no_hechos))))
                (if (not (eq (length$ ?ejs_Equilibrio_rec) 0)) then
                    (bind ?rand (+ (mod (random) (length$ ?ejs_Equilibrio_rec)) 1))
                    (bind ?ej (nth$ ?rand ?ejs_Equilibrio_rec))
                    else 
                    (bind ?ejs_Equilibrio_disp_fav (find-all-instances ((?f Equilibrio)) (and (member ?f ?disp) (member ?f ?fav) (member ?f ?ejs_no_hechos))))
                    (if (not (eq (length$ ?ejs_Equilibrio_disp_fav) 0)) then
                        (bind ?rand (+ (mod (random) (length$ ?ejs_Equilibrio_disp_fav)) 1))
                        (bind ?ej (nth$ ?rand ?ejs_Equilibrio_disp_fav))
                        else
                        (bind ?ejs_Equilibrio_disp (find-all-instances ((?f Equilibrio)) (and (member ?f ?disp) (member ?f ?ejs_no_hechos))))
                        (if (not (eq (length$ ?ejs_Equilibrio_disp) 0)) then
                            (bind ?rand (+ (mod (random) (length$ ?ejs_Equilibrio_disp)) 1))
                            (bind ?ej (nth$ ?rand ?ejs_Equilibrio_disp))
                        )
                    )
                )
            )
            (if (not (eq ?ej nil)) then
                ;(printout t "ej: " ?ej crlf "llista: " ?ejs_no_hechos crlf)
                (if (not (eq (member$ ?ej ?ejs_no_hechos) FALSE)) then
                    (bind ?ejs_no_hechos (delete$ ?ejs_no_hechos (member$ ?ej ?ejs_no_hechos) (member$ ?ej ?ejs_no_hechos))) ;eliminem la primera aparicio de l'exercici a ?ejs_no_hechos
                )                ;(printout t "llista amb eliminat: " ?ejs_no_hechos crlf)
            )
            ;si no nhi hvia cap afegeix un q ja hagi fet
            (if (eq ?ej nil) then
                ;afegeix un exercici aerobic i un estirament que l'exerciti. Primer un recomanat i preferit, si no nhi ha cap un recomanat, i si no un disponible (taichi, aquagym, andar, biciest sempre estan disponibles)
                (bind ?ejs_Equilibrio_rec_fav (find-all-instances ((?f Equilibrio)) (and (member ?f ?rec) (member ?f ?fav))))
                (if (not (eq (length$ ?ejs_Equilibrio_rec_fav) 0)) then
                    (bind ?rand (+ (mod (random) (length$ ?ejs_Equilibrio_rec_fav)) 1))
                    (bind ?ej (nth$ ?rand ?ejs_Equilibrio_rec_fav))
                    else
                    (bind ?ejs_Equilibrio_rec (find-all-instances ((?f Equilibrio)) (member ?f ?rec)))
                    (if (not (eq (length$ ?ejs_Equilibrio_rec) 0)) then
                        (bind ?rand (+ (mod (random) (length$ ?ejs_Equilibrio_rec)) 1))
                        (bind ?ej (nth$ ?rand ?ejs_Equilibrio_rec))
                        else 
                        (bind ?ejs_Equilibrio_disp_fav (find-all-instances ((?f Equilibrio)) (and (member ?f ?disp) (member ?f ?fav))))
                        (if (not (eq (length$ ?ejs_Equilibrio_disp_fav) 0)) then
                            (bind ?rand (+ (mod (random) (length$ ?ejs_Equilibrio_disp_fav)) 1))
                            (bind ?ej (nth$ ?rand ?ejs_Equilibrio_disp_fav))
                            else
                            (bind ?ejs_Equilibrio_disp (find-all-instances ((?f Equilibrio)) (member ?f ?disp)))
                            (bind ?rand (+ (mod (random) (length$ ?ejs_Equilibrio_disp)) 1))
                            (bind ?ej (nth$ ?rand ?ejs_Equilibrio_disp))
                        )
                    )
                )
            )      
            
            (slot-insert$ ?sesion contiene 100 ?ej)
            (slot-insert$ ?sesion contiene 100 [Reposo])
        )







        ;afegim un de fuerza amb calentament
        ;intentem primer afegir un aerobic que no hagi fet aquesta setmana.
        (bind ?ejs_Fuerza_rec_fav (find-all-instances ((?f Fuerza)) (and (member ?f ?rec) (member ?f ?fav) (member ?f ?ejs_no_hechos))))
        (if (not (eq (length$ ?ejs_Fuerza_rec_fav) 0)) then
            (bind ?rand (+ (mod (random) (length$ ?ejs_Fuerza_rec_fav)) 1))
            (bind ?ej (nth$ ?rand ?ejs_Fuerza_rec_fav))
            else
            (bind ?ejs_Fuerza_rec (find-all-instances ((?f Fuerza)) (and (member ?f ?rec) (member ?f ?ejs_no_hechos))))
            (if (not (eq (length$ ?ejs_Fuerza_rec) 0)) then
                (bind ?rand (+ (mod (random) (length$ ?ejs_Fuerza_rec)) 1))
                (bind ?ej (nth$ ?rand ?ejs_Fuerza_rec))
                else 
                (bind ?ejs_Fuerza_disp_fav (find-all-instances ((?f Fuerza)) (and (member ?f ?disp) (member ?f ?fav) (member ?f ?ejs_no_hechos))))
                (if (not (eq (length$ ?ejs_Fuerza_disp_fav) 0)) then
                    (bind ?rand (+ (mod (random) (length$ ?ejs_Fuerza_disp_fav)) 1))
                    (bind ?ej (nth$ ?rand ?ejs_Fuerza_disp_fav))
                    else
                    (bind ?ejs_Fuerza_disp (find-all-instances ((?f Fuerza)) (and (member ?f ?disp) (member ?f ?ejs_no_hechos))))
                    (if (not (eq (length$ ?ejs_Fuerza_disp) 0)) then
                        (bind ?rand (+ (mod (random) (length$ ?ejs_Fuerza_disp)) 1))
                        (bind ?ej (nth$ ?rand ?ejs_Fuerza_disp))
                    )
                )
            )
        )
        (if (not (eq ?ej nil)) then
            ;(printout t "ej: " ?ej crlf "llista: " ?ejs_no_hechos crlf)
            (if (not (eq (member$ ?ej ?ejs_no_hechos) FALSE)) then
                (bind ?ejs_no_hechos (delete$ ?ejs_no_hechos (member$ ?ej ?ejs_no_hechos) (member$ ?ej ?ejs_no_hechos))) ;eliminem la primera aparicio de l'exercici a ?ejs_no_hechos
            )            ;(printout t "llista amb eliminat: " ?ejs_no_hechos crlf)
        )
        ;si no nhi hvia cap afegeix un q ja hagi fet
        (if (eq ?ej nil) then
            ;afegeix un exercici aerobic i un estirament que l'exerciti. Primer un recomanat i preferit, si no nhi ha cap un recomanat, i si no un disponible (taichi, aquagym, andar, biciest sempre estan disponibles)
            (bind ?ejs_Fuerza_rec_fav (find-all-instances ((?f Fuerza)) (and (member ?f ?rec) (member ?f ?fav))))
            (if (not (eq (length$ ?ejs_Fuerza_rec_fav) 0)) then
                (bind ?rand (+ (mod (random) (length$ ?ejs_Fuerza_rec_fav)) 1))
                (bind ?ej (nth$ ?rand ?ejs_Fuerza_rec_fav))
                else
                (bind ?ejs_Fuerza_rec (find-all-instances ((?f Fuerza)) (member ?f ?rec)))
                (if (not (eq (length$ ?ejs_Fuerza_rec) 0)) then
                    (bind ?rand (+ (mod (random) (length$ ?ejs_Fuerza_rec)) 1))
                    (bind ?ej (nth$ ?rand ?ejs_Fuerza_rec))
                    else 
                    (bind ?ejs_Fuerza_disp_fav (find-all-instances ((?f Fuerza)) (and (member ?f ?disp) (member ?f ?fav))))
                    (if (not (eq (length$ ?ejs_Fuerza_disp_fav) 0)) then
                        (bind ?rand (+ (mod (random) (length$ ?ejs_Fuerza_disp_fav)) 1))
                        (bind ?ej (nth$ ?rand ?ejs_Fuerza_disp_fav))
                        else
                        (bind ?ejs_Fuerza_disp (find-all-instances ((?f Fuerza)) (member ?f ?disp)))
                        (bind ?rand (+ (mod (random) (length$ ?ejs_Fuerza_disp)) 1))
                        (bind ?ej (nth$ ?rand ?ejs_Fuerza_disp))
                    )
                )
            )
        )      
        ;ara afegim un exercici de calentament(flexibilitat) que exerciti el mateix que l'aerobic. Si no nhi ha cap un aleatori.
        (bind ?partes (insert$ ?partes 100 (send ?ej get-ejercita)))
        ;(printout t "Ejercicio: " ?ej crlf)
        (if (not (eq (length$ (send ?ej get-ejercita)) 0)) then
            (bind ?ejs_calentamiento (find-all-instances ((?f Flexibilidad)) (and (member (send ?f get-ejercita) (send ?ej get-ejercita)) (member ?f ?disp) (member ?f ?ejs_no_hechos))))
            (if (eq (length$ ?ejs_calentamiento) 0) then 
                (bind ?ejs_calentamiento (find-all-instances ((?f Flexibilidad)) (and (member (send ?f get-ejercita) (send ?ej get-ejercita)) (member ?f ?disp))))
            )
            else
            (bind ?ejs_calentamiento (find-all-instances ((?f Flexibilidad)) (and (member ?f ?disp) (member ?f ?ejs_no_hechos))))
            (if (eq (length$ ?ejs_calentamiento) 0) then 
                (bind ?ejs_calentamiento (find-all-instances ((?f Flexibilidad)) (member ?f ?disp)))
            )
        )
        (bind ?rand (+ (mod (random) (length$ ?ejs_calentamiento)) 1))
        (bind ?ej_cal (nth$ ?rand ?ejs_calentamiento))

        ;eliminem la primera aparicio de l'estirament a ?ejs_no_hechos si existia
        (if (and (not (eq ?ej_cal nil)) (not (eq (member$ ?ej_cal ?ejs_no_hechos) FALSE))) then
            (bind ?ejs_no_hechos (delete$ ?ejs_no_hechos (member$ ?ej_cal ?ejs_no_hechos) (member$ ?ej_cal ?ejs_no_hechos))) 
        )

        (slot-insert$ ?sesion contiene 100 ?ej_cal) ;els afegim al final del que portem de sessio
        (slot-insert$ ?sesion contiene 100 ?ej)
        (slot-insert$ ?sesion contiene 100 [Reposo])











        ;per acabar afegim un altre aerobic amb calentament i finalitzacio
        ;intentem primer afegir un aerobic que no hagi fet aquesta setmana.
        (bind ?ejs_aerobico_rec_fav (find-all-instances ((?f Aerobico)) (and (member ?f ?rec) (member ?f ?fav) (member ?f ?ejs_no_hechos))))
        (if (not (eq (length$ ?ejs_aerobico_rec_fav) 0)) then
            (bind ?rand (+ (mod (random) (length$ ?ejs_aerobico_rec_fav)) 1))
            (bind ?ej (nth$ ?rand ?ejs_aerobico_rec_fav))
            else
            (bind ?ejs_aerobico_rec (find-all-instances ((?f Aerobico)) (and (member ?f ?rec) (member ?f ?ejs_no_hechos))))
            (if (not (eq (length$ ?ejs_aerobico_rec) 0)) then
                (bind ?rand (+ (mod (random) (length$ ?ejs_aerobico_rec)) 1))
                (bind ?ej (nth$ ?rand ?ejs_aerobico_rec))
                else 
                (bind ?ejs_aerobico_disp_fav (find-all-instances ((?f Aerobico)) (and (member ?f ?disp) (member ?f ?fav) (member ?f ?ejs_no_hechos))))
                (if (not (eq (length$ ?ejs_aerobico_disp_fav) 0)) then
                    (bind ?rand (+ (mod (random) (length$ ?ejs_aerobico_disp_fav)) 1))
                    (bind ?ej (nth$ ?rand ?ejs_aerobico_disp_fav))
                    else
                    (bind ?ejs_aerobico_disp (find-all-instances ((?f Aerobico)) (and (member ?f ?disp) (member ?f ?ejs_no_hechos))))
                    (if (not (eq (length$ ?ejs_aerobico_disp) 0)) then
                        (bind ?rand (+ (mod (random) (length$ ?ejs_aerobico_disp)) 1))
                        (bind ?ej (nth$ ?rand ?ejs_aerobico_disp))
                    )
                )
            )
        )
        (if (not (eq ?ej nil)) then
            ;(printout t "ej: " ?ej crlf "llista: " ?ejs_no_hechos crlf)
            (if (not (eq (member$ ?ej ?ejs_no_hechos) FALSE)) then
                (bind ?ejs_no_hechos (delete$ ?ejs_no_hechos (member$ ?ej ?ejs_no_hechos) (member$ ?ej ?ejs_no_hechos))) ;eliminem la primera aparicio de l'exercici a ?ejs_no_hechos
            )            ;(printout t "llista amb eliminat: " ?ejs_no_hechos crlf)
        )
        ;si no nhi hvia cap afegeix un q ja hagi fet
        (if (eq ?ej nil) then
            ;afegeix un exercici aerobic i un estirament que l'exerciti. Primer un recomanat i preferit, si no nhi ha cap un recomanat, i si no un disponible (taichi, aquagym, andar, biciest sempre estan disponibles)
            (bind ?ejs_aerobico_rec_fav (find-all-instances ((?f Aerobico)) (and (member ?f ?rec) (member ?f ?fav))))
            (if (not (eq (length$ ?ejs_aerobico_rec_fav) 0)) then
                (bind ?rand (+ (mod (random) (length$ ?ejs_aerobico_rec_fav)) 1))
                (bind ?ej (nth$ ?rand ?ejs_aerobico_rec_fav))
                else
                (bind ?ejs_aerobico_rec (find-all-instances ((?f Aerobico)) (member ?f ?rec)))
                (if (not (eq (length$ ?ejs_aerobico_rec) 0)) then
                    (bind ?rand (+ (mod (random) (length$ ?ejs_aerobico_rec)) 1))
                    (bind ?ej (nth$ ?rand ?ejs_aerobico_rec))
                    else 
                    (bind ?ejs_aerobico_disp_fav (find-all-instances ((?f Aerobico)) (and (member ?f ?disp) (member ?f ?fav))))
                    (if (not (eq (length$ ?ejs_aerobico_disp_fav) 0)) then
                        (bind ?rand (+ (mod (random) (length$ ?ejs_aerobico_disp_fav)) 1))
                        (bind ?ej (nth$ ?rand ?ejs_aerobico_disp_fav))
                        else
                        (bind ?ejs_aerobico_disp (find-all-instances ((?f Aerobico)) (member ?f ?disp)))
                        (bind ?rand (+ (mod (random) (length$ ?ejs_aerobico_disp)) 1))
                        (bind ?ej (nth$ ?rand ?ejs_aerobico_disp))
                    )
                )
            )
        )



        
        ;ara afegim un exercici de calentament(flexibilitat) que exerciti el mateix que l'aerobic. Si no nhi ha cap un aleatori.
        (bind ?partes (insert$ ?partes 100 (send ?ej get-ejercita)))
        ;(printout t "Ejercicio: " ?ej crlf)
        (if (not (eq (length$ (send ?ej get-ejercita)) 0)) then
            (bind ?ejs_calentamiento (find-all-instances ((?f Flexibilidad)) (and (member (send ?f get-ejercita) (send ?ej get-ejercita)) (member ?f ?disp) (member ?f ?ejs_no_hechos))))
            (if (eq (length$ ?ejs_calentamiento) 0) then 
                (bind ?ejs_calentamiento (find-all-instances ((?f Flexibilidad)) (and (member (send ?f get-ejercita) (send ?ej get-ejercita)) (member ?f ?disp))))
            )
            else
            (bind ?ejs_calentamiento (find-all-instances ((?f Flexibilidad)) (and (member ?f ?disp) (member ?f ?ejs_no_hechos))))
            (if (eq (length$ ?ejs_calentamiento) 0) then 
                (bind ?ejs_calentamiento (find-all-instances ((?f Flexibilidad)) (member ?f ?disp)))
            )
        )
        (bind ?rand (+ (mod (random) (length$ ?ejs_calentamiento)) 1))
        (bind ?ej_cal (nth$ ?rand ?ejs_calentamiento))

        ;eliminem la primera aparicio de l'estirament a ?ejs_no_hechos si existia
        (if (and (not (eq ?ej_cal nil)) (not (eq (member$ ?ej_cal ?ejs_no_hechos) FALSE))) then
            (bind ?ejs_no_hechos (delete$ ?ejs_no_hechos (member$ ?ej_cal ?ejs_no_hechos) (member$ ?ej_cal ?ejs_no_hechos))) 
        )




        ;i finalment afegim un altre de flexibilitat com a finalitzacio.
        (bind ?partes (insert$ ?partes 100 (send ?ej get-ejercita)))
        ;(printout t "Ejercicio: " ?ej crlf)
        (if (not (eq (length$ (send ?ej get-ejercita)) 0)) then
            (bind ?ejs_finalizacion (find-all-instances ((?f Flexibilidad)) (and (member (send ?f get-ejercita) (send ?ej get-ejercita)) (member ?f ?disp) (member ?f ?ejs_no_hechos))))
            (if (eq (length$ ?ejs_finalizacion) 0) then 
                (bind ?ejs_finalizacion (find-all-instances ((?f Flexibilidad)) (and (member (send ?f get-ejercita) (send ?ej get-ejercita)) (member ?f ?disp))))
            )
            else
            (bind ?ejs_finalizacion (find-all-instances ((?f Flexibilidad)) (and (member ?f ?disp) (member ?f ?ejs_no_hechos))))
            (if (eq (length$ ?ejs_finalizacion) 0) then 
                (bind ?ejs_finalizacion (find-all-instances ((?f Flexibilidad)) (member ?f ?disp)))
            )
        )
        (bind ?rand (+ (mod (random) (length$ ?ejs_finalizacion)) 1))
        (bind ?ej_fin (nth$ ?rand ?ejs_finalizacion))

        ;eliminem la primera aparicio de l'estirament a ?ejs_no_hechos si existia
        (if (and (not (eq ?ej_fin nil)) (not (eq (member$ ?ej_fin ?ejs_no_hechos) FALSE))) then
            (bind ?ejs_no_hechos (delete$ ?ejs_no_hechos (member$ ?ej_fin ?ejs_no_hechos) (member$ ?ej_fin ?ejs_no_hechos))) 
        )




        (slot-insert$ ?sesion contiene 100 ?ej_cal) ;els afegim al final del que portem de sessio
        (slot-insert$ ?sesion contiene 100 ?ej)
        (slot-insert$ ?sesion contiene 100 ?ej_fin)
        
        
        (bind ?rand (+ (mod (random) ?i) 1))
        (slot-insert$ ?plan formado_por ?rand ?sesion) ;añadimos la sesion en una posicion aleatoria para que no se hagan los ejs fav al principio y el resto al final
    )

    (assert (sesiones_creadas))
    ;(printout t "creasesiones" crlf)
)


(defrule asignar-nivel-aerobico "Se asigna el nivel que deberán tener los ejercicios de tipo aerobico"
    (not (nivel-aer))
    ?h <- (habilidades (aerobico ?aer))
    ?p <- (object(is-a Persona))
    =>
    (bind ?imc (send ?p get-IMC))
    (if  (or (< ?aer 0) (> ?imc 30)) then (assert (nivel-aer bajo)) ; bajo nivel aerobico o sobrepeso
    else 
        (if  (eq ?aer 0) then (assert (nivel-aer medio)))
        (if  (> ?aer 0) then (assert (nivel-aer alto)))
    )
) 
    

(defrule print-nivel-aerobico "Imprime el nivel de intensidad de los ejercicios aerobicos"
    (nivel-aer ?niv)
    =>
    (printout t "Se ha adecuado su nivel de intensidad de los ejercicios aerobicos a: " ?niv crlf)
    (assert (print-aerobico))
)

(defrule asignar-nivel-equilibrio "Se asigna el nivel que deberán tener los ejercicios de tipo equilibrio"
    (not (niver-eq))
    ?h <- (habilidades (equilibrio ?eq))
    =>
    (if  (< ?eq 0) then (assert (nivel-eq bajo)))
    (if  (eq ?eq 0) then (assert (nivel-eq medio)))
    (if  (> ?eq 0) then (assert (nivel-eq alto)))
)

(defrule print-nivel-equilibrio "Imprime el nivel de intensidad de los ejercicios de equilibrio"
    (nivel-eq ?niv)
    =>
    (printout t "Se ha adecuado su nivel de intensidad de los ejercicios de equilibrio a: " ?niv crlf)
    (assert (print-equilibrio))
)

(defrule asignar-nivel-fuerza "Se asigna el nivel que deberán tener los ejercicios de tipo fuerza"
    (not (nivel-fuer))
    ?h <- (habilidades (fuerza ?f))
    =>
    (if  (< ?f 0) then (assert (nivel-fuer bajo)))
    (if  (eq ?f 0) then (assert (nivel-fuer medio)))
    (if  (> ?f 0) then (assert (nivel-fuer alto)))
)

(defrule print-nivel-fuerza "Imprime el nivel de intensidad de los ejercicios de fuerza"
    (nivel-fuer ?niv)
    =>
    (printout t "Se ha adecuado su nivel de intensidad de los ejercicios de fuerza a: " ?niv crlf)
    (assert (print-fuerza))
)

(defrule asignar-nivel-flexibilidad "Se asigna el nivel que deberán tener los ejercicios de tipo flexibilidad"
    (not (nivel-flex))
    ?h <- (habilidades (flexibilidad ?f))
    =>
    (if  (< ?f 0) then (assert (nivel-flex bajo)))
    (if  (eq ?f 0) then (assert (nivel-flex medio)))
    (if  (> ?f 0) then (assert (nivel-flex alto)))
)

(defrule print-nivel-flexibilidad "Imprime el nivel de intensidad de los ejercicios de flexibilidad"
    (nivel-flex ?niv)
    =>
    (printout t "Se ha adecuado su nivel de intensidad de los ejercicios de flexibilidad a: " ?niv crlf)
    (assert (print-flexibilidad))
)

(defrule muestra_planificacion
	(sesiones_creadas) (print-aerobico) (print-equilibrio) (print-fuerza) (print-flexibilidad)
    (nivel-flex ?flex) (nivel-aer ?aer) (nivel-eq ?eq) (nivel-fuer ?fuer)
    (dias ?d)
	?x <- (object(is-a Persona))
    ?planificacion <- (object(is-a Planificacion))
	=>
	(printout t "---------------------------------------" crlf)
    (printout t "Estimado/a " (send ?x get-Nombre) ", segun su historial medico, su condicion fisica y su disponibilidad le recomendamos la siguiente tabla de entrenamiento:  " crlf)
	(printout t crlf)
	(printout t "----------------------------------" crlf)
    (bind ?ses (send ?planificacion get-formado_por))

    (bind ?i 1)
    (while (<= ?i (length$ (send ?planificacion get-formado_por))) do
        (printout t "---------------------------------" crlf)
		(printout t "Sesion dia " ?i " de la semana:" crlf)
        (bind ?sesion (nth$ ?i (send ?planificacion get-formado_por)))
        (bind ?ejs (send ?sesion get-contiene))
		(bind ?size (length$ ?ejs))
        (loop-for-count (?j 1 ?size) do
            (bind ?ejer (nth$ ?j ?ejs))
            (printout t "    Ejercicio numero " ?j crlf)
            (printout t "        " ?ejer crlf)
            (if (eq (class ?ejer) Equilibrio) then
                (if (eq ?eq bajo) then 
                    (printout t "        - Numero de repeticiones: 2" crlf)
                    (printout t "        - Duracion de cada repeticion: 2 minutos" crlf)
                    (printout t "        - Intensidad del ejercicio: baja" crlf)
                )
                (if (eq ?eq medio) then 
                    (printout t "        - Numero de repeticiones: 3" crlf)
                    (printout t "        - Duracion de cada repeticion: 4 minutos" crlf)
                    (printout t "        - Intensidad del ejercicio: media" crlf)
                )
                (if (eq ?eq alto) then 
                    (printout t "        - Numero de repeticiones: 4" crlf)
                    (printout t "        - Duracion de cada repeticion: 6 minutos" crlf)
                    (printout t "        - Intensidad del ejercicio: alta" crlf)
                )
            )
            (if (eq (class ?ejer) Fuerza) then
                (if (eq ?fuer bajo) then 
                    (printout t "        - Numero de series: 2" crlf)
                    (printout t "        - Numero de repeticiones del ejercicio en cada serie: 5" crlf)
                    (printout t "        - Intensidad del ejercicio: baja" crlf)
                )
                (if (eq ?fuer medio) then 
                    (printout t "        - Numero de series: 3" crlf)
                    (printout t "        - Numero de repeticiones del ejercicio en cada serie: 10" crlf)
                    (printout t "        - Intensidad del ejercicio: media" crlf)
                )
                (if (eq ?fuer alto) then 
                    (printout t "        - Numero de series: 4" crlf)
                    (printout t "        - Numero de repeticiones del ejercicio en cada serie: 12" crlf)
                    (printout t "        - Intensidad del ejercicio: alta" crlf)
                )
            )
            (if (eq (class ?ejer) Aerobico) then
                (if (eq ?aer bajo) then 
                    (printout t "        - Duracion del ejercicio: 10 minutos" crlf)
                    (printout t "        - Intensidad del ejercicio: baja" crlf)
                )
                (if (eq ?aer medio) then 
                    (printout t "        - Duracion del ejercicio: 20 minutos" crlf)
                    (printout t "        - Intensidad del ejercicio: media" crlf)
                )
                (if (eq ?aer alto) then 
                    (printout t "        - Duracion del ejercicio: 30 minutos" crlf)
                    (printout t "        - Intensidad del ejercicio: alta" crlf)
                )
            )
            (if (eq (class ?ejer) Flexibilidad) then
                (if (eq ?flex bajo) then 
                    (printout t "        - Duracion del ejercicio: 20 segundos" crlf)
                    (printout t "        - Intensidad del ejercicio: baja" crlf)
                )
                (if (eq ?flex medio) then 
                    (printout t "        - Duracion del ejercicio: 30 segundos" crlf)
                    (printout t "        - Intensidad del ejercicio: media" crlf)
                )
                (if (eq ?flex alto) then 
                    (printout t "        - Duracion del ejercicio: 40 segundos" crlf)
                    (printout t "        - Intensidad del ejercicio: alta" crlf)
                )
            )
            (if (eq (class ?ejer) Descanso) then
                (printout t "-------------------" crlf)
                (if (eq ?aer bajo) then 
                    (printout t "        Descanse durante 8 minutos" crlf)
                )
                (if (eq ?aer medio) then 
                    (printout t "        Descanse durante 5 minutos" crlf)
                )
                (if (eq ?aer alto) then 
                    (printout t "        Descanse durante 3 minutos" crlf)
                )
                (printout t "-------------------" crlf)
            )
            (printout t crlf)
        )
        (printout t "---------------------------------" crlf)
        (bind ?i (+ ?i 1))
    )



;    (loop-for-count (?i 1 ?d) do
;		(printout t "---------------------------------" crlf)
;		(printout t "Sesion dia " ?i " de la semana:" crlf)
;        (bind ?sesion (nth$ ?i ?ses))
;        (printout t "############sesion: " ?sesion crlf)
;        (bind ?ejs (send ?sesion get-contiene))
;		(bind ?size (length$ ?ejs))
;        (loop-for-count (?j 1 ?size) do
;            (bind ?ejer (nth$ ?j ?ejs))
;            (printout t "    Ejercicio numero " ?j crlf)
;            (printout t "        " ?ejer crlf)
;            (printout t "        Duracion maxima: 5 minutos" crlf)
;            (printout t "        Repeticiones maximas: 3" crlf)
;        )
;        (printout t "---------------------------------" crlf)
;    )
)


; -------------------------------------------------------------------------------------------
; MODULO FINAL PROGRAMA :(
; -------------------------------------------------------------------------------------------
(defmodule FINAL
    (import MAIN ?ALL)
    (import PREGUNTAS ?ALL)
    (export ?ALL)
)



(defrule mensaje_final "Mensaje Final"
    (motivo ?mot)
    =>
    (printout t "Lo sentimos pero no cumple los requisitos necesarios para poder ofrecerle un programa de entrenamiento. Consulte con un especialista si lo desea " crlf)
    (printout t "El motivo por el cual no lo podemos atender ha sido que " ?mot crlf)
)

;;; ---------------------------------------------------------
;;; practicados.clp
;;; Translated by owl2clips
;;; Translated to CLIPS from ontology practicados.owl
;;; :Date 05/12/2022 17:14:45

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
    )

    ;;; No hacer nada
    ([Aneurisma] of Enfermedad
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
         (ejercicio_recomendado  [Andar] [AndarPuntillas] [AndarTalon] [Aquagym] [CaminarLineaRectaPiesJuntos] [LevantarseSentarseSillaSinBrazos] [SostenerseSobreUnPie] [Taichi] [Yoga] [Zumba])
         (no_puede_hacer  [AndarLigero] [Correr] [Patinar] [Senderismo] [Tenis])
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
    )

    ([Tenis] of Aerobico
         (ejercita  [Brazos])
         (necesita  [CampoTenis] [RaquetaTenis])
    )

    ([Torso] of ParteDelCuerpo
    )

    ([Yoga] of Flexibilidad
    )

    ([Zumba] of Aerobico
    )

)







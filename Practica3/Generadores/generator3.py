import argparse
import random 
import sys

parser = argparse.ArgumentParser()
parser.add_argument("-l", "--lugares", required=True)
parser.add_argument("-r", "--rovers", required=True)
parser.add_argument("-p", "--personas", required=True)
parser.add_argument("-s", "--suministros", required=True)
parser.add_argument("-n", "--num", required=True)
parser.add_argument("-ss", "--seed", required=True)
args = parser.parse_args()


num = int(args.num)
seedMapa = int(args.seed)

lugares = []
strLugares = ''
rovers = []
strRovers = ''
personas = []
strPersonas = ''
suministros = []
strSuministros = ''
for i in range(int(args.lugares)):
    lugares.append(f"L{i}")
    strLugares += f"L{i}" + ' '

for i in range(int(args.rovers)):
    rovers.append(f"R{i}")
    strRovers += f"R{i}" + ' '

for i in range(int(args.personas)):
    personas.append(f"P{i}")
    strPersonas += f"P{i}" + ' '
    
for i in range(int(args.suministros)):
    suministros.append(f"S{i}")
    strSuministros += f"S{i}" + ' '

numRovers = int(args.rovers)
with open(f"problem roverPro3_{seedMapa}_{num}_{numRovers}.pddl", 'w') as f:
    sys.stdout = f # Change the standard output to the file we created.
    print(f"(define (problem roverPro32) (:domain roverTo32)")
    print("(:objects")
    print(strLugares, "- lugar")
    print(strRovers, "- rover")
    print(strPersonas, "- persona")
    print(strSuministros, "- suministro")
    print("Alta Media Baja - prioridad")
    print(")")


    random.seed(seedMapa) #Fem servir la seed del mapa per generar sempre el mateix mapa

    #Crearem un mapa que sigui circular (L0 -> L1 -> ... -> Ln) per asseguar-nos que sigui connex, si ho féssim completament aleatori seria més díficil d'asseguar-nos que sigui connex :)
    print("(:init")
    if (int(args.lugares) > 1):
        for i in range(int(args.lugares)-1):
            print(f"(camino L{i}, L{i+1})  (camino L{i+1}, L{i})")

    #Al mapa circular li afegim camins entre mig
    if (int(args.lugares) > 3): #Com a mínim 3 lugares per poder afegir camins nous
        numCamins = random.randint(0, int(args.lugares)*2) #Nombre de camins que afegirem
        n = int(args.lugares)-1
        numCamins = min(numCamins, int((n*(n-1))/2)- n) #Evitem que el mapa sigui un graf complert (n*n-1 / 2) tenint en compte que ja teníem n-1 camins anteriorment
        for _ in range(numCamins):
            origen = random.randint(0, int(args.lugares)-1)
            desti = random.randint(0, int(args.lugares)-1)
            while (origen == desti+1 or origen == desti-1 or origen == desti):
                desti = random.randint(0, int(args.lugares)-1)
            print(f"(camino L{desti}, L{origen})  (camino L{origen}, L{desti})")

    
    random.seed(num+1) #Tornem a la seed d'aquell joc de proves per poder fer diferents jocs de proves amb el mateix nombre de rovers, lugares, etc pero amb inicialitzacions i goals diferents
    #Assignem a cada rover a un lugar
    for i in range(int(args.rovers)):
        lugar = random.randint(0, int(args.lugares)-1)
        print(f"(en R{i}, L{lugar})")

    #Assignem a cada persona a un lugar
    random.seed(num+2)
    for i in range(int(args.personas)):
        lugar = random.randint(0, int(args.lugares)-1)
        print(f"(en P{i}, L{lugar})")

    #Assignem a cada suminsitro a un lugar
    random.seed(num+3)
    for i in range(int(args.suministros)):
        lugar = random.randint(0, int(args.lugares)-1)
        print(f"(en S{i}, L{lugar})")

    #Inicialitzar rovers amb dos espais lliures
    for i in range(int(args.rovers)):
        print(f"(= (libre R{i}) 2)")

    #Inicialitzar combustible rovers
    total = 0
    random.seed(num+3)
    for i in range(int(args.rovers)):
        val = random.randint(1, 50) #cada rover tindrà un valor de combustible entre 1 i 80
        total += val
        print(f"(= (combustible R{i}) {val})")
    print(f"(= (combustible_total) {total})")

    print("(= (valor_prioridad Baja) 1)")
    print("(= (valor_prioridad Media) 2)")
    print("(= (valor_prioridad Alta) 3)")

    #Fem les peticions de persones. Per cada lugar farem la petició en un rang entre 0 i 2*numPersones
    peticionesTotales = 0
    random.seed(num+4)
    for i in range(int(args.lugares)):
        numPersonasBaja = random.randint(0, 2*int(args.personas))
        numPersonasMedia = random.randint(0, 2*int(args.personas))
        numPersonasAlta = random.randint(0, 2*int(args.personas))
        if (numPersonasBaja != 0):
            peticionesTotales += 1
        if (numPersonasMedia != 0):
            peticionesTotales += 1
        if (numPersonasAlta != 0):
            peticionesTotales += 1
        print(f"(= (peticion_persona L{i} Baja) {numPersonasBaja})  (= (peticion_persona L{i} Media) {numPersonasMedia})  (= (peticion_persona L{i} Alta) {numPersonasAlta})")
        

    #Fem les peticions de suministros. Per cada lugar farem la petició en un rang entre 0 i 2*numSuministros
    random.seed(num+5)
    for i in range(int(args.lugares)):
        numSuministrosBaja = random.randint(0, 2*int(args.suministros))
        numSuministrosMedia = random.randint(0, 2*int(args.suministros))
        numSuministrosAlta = random.randint(0, 2*int(args.suministros))
        if (numSuministrosBaja != 0):
            peticionesTotales += 1
        if (numSuministrosMedia != 0):
            peticionesTotales += 1
        if (numSuministrosAlta != 0):
            peticionesTotales += 1
        print(f"(= (peticion_suministro L{i} Baja) {numSuministrosBaja})   (= (peticion_suministro L{i} Media) {numSuministrosMedia})  (= (peticion_suministro L{i} Alta) {numSuministrosAlta})")


    #Definim el nombre total de peticions que es podran satisfer que correspon al nombre de personas i suministros
    total = int(args.suministros) + int(args.personas)
    print(f"(= (recursos_restantes) {total})")
    print("(= (num_max_prioridad) 3)")
    print(f"(= (suma_prioridades) {peticionesTotales})")
    print(")")

    print("(:goal (or")
    print("    (forall (?l - lugar) (forall (?p - prioridad) (and (= (peticion_persona ?l ?p) 0) (= (peticion_suministro ?l ?p) 0))))")
    print("    (= (recursos_restantes) 0)))")


    print("(:metric maximize (+ (* (combustible_total) 2) (* (suma_prioridades) 1))))")
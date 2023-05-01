Algoritmo IntentodeCrucigrama
	definir matriz como caracter
	definir cont Como Entero
	definir ch Como Logico
	ch=Verdadero
	cont=0
	dimension matriz[12,14]
	inicializarMatriz(matriz,12,14)
	insertarPalabra(matriz,12,14)
	hacer
	imprimirMatriz(matriz,12,14)
	preguntas()
	respuestas(matriz,cont,ch)
	Mientras Que ch
	imprimirMatriz(matriz,12,14)
	Escribir ""
	Escribir "Felicidades"
FinAlgoritmo

SubProceso inicializarMatriz(matriz Por Referencia,n,m)
	Definir i, j Como Entero
	para i<-0 Hasta n-1 Hacer
		para j<-0 Hasta m-1 Hacer
			matriz[i,j]="#"
		FinPara
	FinPara
FinSubProceso

SubProceso insertarPalabra (matriz Por Referencia,n,m)
	Definir i,j Como Entero
	para i<-0 Hasta n-1 Hacer
		matriz[i,7]=Subcadena("PROGRAMACION",i,i)
	FinPara
	para j<-4 Hasta Longitud("Subproceso")-1+4 Hacer // ####subProceso
		si j<>7 Entonces
			matriz[0,j]="_"
		FinSi
	FinPara
	para j<-3 Hasta Longitud("entero")-1+3 Hacer // ###enteRo#####
		si j<>7 Entonces
			matriz[1,j]="_"
		FinSi
	FinPara
	para j<-2 hasta Longitud("funcion")-1+2 Hacer // ##funciOn#####
		si j<>7 Entonces
			matriz[2,j]="_"
		FinSi
	FinPara
	para j<-5 Hasta Longitud("logico")-1+5 Hacer // #####loGico###
		si j<>7 Entonces
			matriz[3,j]="_"
		FinSi
	FinPara
	para j<-5 hasta Longitud("para")-1+5 Hacer // #####paRa#####
		si j<>7 Entonces
			matriz[4,j]="_"
		FinSi
	FinPara
	para j<-4 hasta Longitud("caracter")-1+4 Hacer // ####carActer## 
		si j<>7 Entonces
			matriz[5,j]="_"
		FinSi
	FinPara
	para j<-0 Hasta Longitud("algoritmo")-1 hacer // algoritMo#####
		si j<>7 Entonces
			matriz[6,j]="_"
		FinSi
	FinPara
	para j<-3 Hasta Longitud("concatenar")-1+3 hacer	// ###concAtenar#
		si j<>7 Entonces
			matriz[7,j]="_"
		FinSi
	FinPara
	para j<-5 Hasta Longitud("escribir")-1+5 Hacer // #####esCribir#
		si j<>7 Entonces
			matriz[8,j]="_"
		FinSi
	FinPara
	para j<-4 Hasta Longitud("definir")-1+4 Hacer // ####defInir###
		si j<>7 Entonces
			matriz[9,j]="_"
		FinSi
	FinPara
	para j<-4 Hasta Longitud("entonces")-1+4 Hacer // ####entOnces##
		si j<>7 Entonces
			matriz[10,j]="_"
		FinSi
	FinPara
	para j<-4 Hasta Longitud("mientras")-1+4 Hacer // ####mieNtras##
		si j<>7 Entonces
			matriz[11,j]="_"
		FinSi
	FinPara
FinSubProceso

SubProceso imprimirMatriz(matriz,n,m)
	Definir i,j Como Entero
	Limpiar Pantalla
	Escribir "Crucigrama"
	Escribir ""
	para i<-0 Hasta n-1 Hacer
		si i+1<10 Entonces
			Escribir sin saltar " " i+1 ") "
		SiNo
			Escribir sin saltar i+1 ") "
		FinSi
		
		para j<-0 Hasta m-1 Hacer
			si j=6 o j=7 Entonces
				Escribir sin saltar matriz[i,j] "|"
			SiNo
				Escribir sin saltar matriz[i,j] " "
			FinSi
		FinPara
		Escribir ""
	FinPara
FinSubProceso	

SubProceso preguntas()
	Escribir "1.- Subprograma, que NO arroja un valor de retorno"
	Escribir "2.- Variable numerica, sin decimales"
	Escribir "3.- Subprograma, que arroja un valor de retorno"
	Escribir "4.- Variable binaria, normalmente utilizada para definir entre verdadero y falso"
	Escribir "5.- Función recursiva, con un tope informado"
	Escribir "6.- Variable literaria, de valor singular (unidimensional)"
	Escribir "7.- Conjunto de reglas definidas que permite solucionar un problema, de una determinada manera, mediante operaciones sitemáticas"
	Escribir "8.- Función utilizada para agregar uno o mas carácteres detras de una cadena de carácteres"
	Escribir "9.- Funcion utilizada para mostrar un mensaje por pantalla"
	Escribir "10.- Funcion utilizada para crear una variable"
	Escribir "11.- Palabra reservada de pseint, utilizada luego de la condicion en un SI, para luego poder desarrollar lo contenido en el SI"
	Escribir "12.- Funcion recursiva, sin tope, puede que nunca se ingrese a la funcion, si la condicion no se cumple previamente"
FinSubProceso

SubProceso respuestas(matriz,cont Por Referencia,check Por Referencia)
	Definir p,j Como Entero
	definir r Como Caracter
	definir correcto Como Logico
	Escribir ""
		correcto=Falso
		Escribir "Ingrese la pregunta a intentar contestar:"
		Leer p
		Escribir Sin Saltar "Respuesta:"
		Leer r
		r=Mayusculas(r)
	segun p Hacer
		1:
			Si r="SUBPROCESO"
				para j<-4 Hasta Longitud("Subproceso")-1+4 Hacer // ####subProceso
					si j<>7 Entonces
						matriz[0,j]=Subcadena("subProceso",j-4,j-4)
					FinSi
					correcto=Verdadero
				FinPara
			SiNo
				Escribir "Respuesta incorrecta, reintente"
			FinSi
		2:
			Si r="ENTERO"
				para j<-3 Hasta Longitud("entero")-1+3 Hacer // ###enteRo#####
					si j<>7 Entonces
						matriz[1,j]=Subcadena("enteRo",j-3,j-3)
					FinSi
					correcto=Verdadero
				FinPara
			SiNo
				Escribir "Respuesta incorrecta, reintente"
			FinSi
		3:
			Si r="FUNCION"
			para j<-2 hasta Longitud("funcion")-1+2 Hacer // ##funciOn#####
				si j<>7 Entonces
					matriz[2,j]=Subcadena("funciOn",j-2,j-2)
				FinSi
				correcto=Verdadero
			FinPara
		SiNo
			Escribir "Respuesta incorrecta, reintente"
			FinSi
		4:
			si r="LOGICO"
			para j<-5 Hasta Longitud("logico")-1+5 Hacer // #####loGico###
				si j<>7 Entonces
					matriz[3,j]=Subcadena("loGico",j-5,j-5)
				FinSi
				correcto=Verdadero
			FinPara
		SiNo
			Escribir "Respuesta incorrecta, reintente"
		Finsi
	5:
		Si r="PARA"
			para j<-5 hasta Longitud("para")-1+5 Hacer // #####paRa#####
				si j<>7 Entonces
					matriz[4,j]=Subcadena("paRa",j-5,j-5)
				FinSi
				correcto=Verdadero
			FinPara
		SiNo
			Escribir "Respuesta incorrecta, reintente"
		Finsi
	6:
		Si r="CARACTER"
			para j<-4 hasta Longitud("caracter")-1+4 Hacer // ####carActer## 
				si j<>7 Entonces
					matriz[5,j]=Subcadena("carActer",j-4,j-4)
				FinSi
				correcto=Verdadero
			FinPara
		SiNo
			Escribir "Respuesta incorrecta, reintente"
		Finsi
	7:
		Si r="ALGORITMO"
			para j<-0 Hasta Longitud("algoritmo")-1 hacer // algoritMo#####
				si j<>7 Entonces
					matriz[6,j]=Subcadena("algoritMo",j,j)
				FinSi
				correcto=Verdadero
			FinPara
		SiNo
			Escribir "Respuesta incorrecta, reintente"
		Finsi
	8:
		Si r="CONCATENAR"
			para j<-3 Hasta Longitud("concatenar")-1+3 hacer	// ###concAtenar#
				si j<>7 Entonces
					matriz[7,j]=Subcadena("concAtenar",j-3,j-3)
				FinSi
				correcto=Verdadero
			FinPara
		SiNo
			Escribir "Respuesta incorrecta, reintente"
		Finsi
	9:
		Si r="ESCRIBIR"
			para j<-5 Hasta Longitud("escribir")-1+5 hacer	// #####esCribir#
				si j<>7 Entonces
					matriz[8,j]=Subcadena("esCribir",j-5,j-5)
				FinSi
				correcto=Verdadero
			FinPara
		SiNo
			Escribir "Respuesta incorrecta, reintente"
		Finsi
	10:
		Si r="DEFINIR"
			para j<-4 Hasta Longitud("definir")-1+4 hacer	// ####defInir###
				si j<>7 Entonces
					matriz[9,j]=Subcadena("defInir",j-4,j-4)
				FinSi
				correcto=Verdadero
			FinPara
		SiNo
			Escribir "Respuesta incorrecta, reintente"
		Finsi
	11:
		Si r="ENTONCES"
			para j<-4 Hasta Longitud("entonces")-1+4 hacer	// ####entOnces##
				si j<>7 Entonces
					matriz[10,j]=Subcadena("entOnces",j-4,j-4)
				FinSi
				correcto=Verdadero
			FinPara
		SiNo
			Escribir "Respuesta incorrecta, reintente"
		Finsi
	12:
		Si r="MIENTRAS"
			para j<-4 Hasta Longitud("mientras")-1+4 hacer	// ####mieNtras##
				si j<>7 Entonces
					matriz[11,j]=Subcadena("mieNtras",j-4,j-4)
				FinSi
				correcto=Verdadero
			FinPara
		SiNo
			Escribir "Respuesta incorrecta, reintente"
		Finsi
	De Otro Modo:
		Escribir "Numero de pregunta fuera de rango, reintente"
	FinSegun
	si correcto Entonces
		cont=cont+1
	FinSi
	Si cont=12 Entonces
		check=Falso
	FinSi
FinSubProceso
	
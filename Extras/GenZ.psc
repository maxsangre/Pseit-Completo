///El apocalipsis Zombie se ha desatado, pero aún hay esperanza. El Dr. Galard ha conseguido aislar el gen Z 
///analizando muestras genéticas codificadas. Una muestra se corresponde con una secuencia de caracteres
///compuesta de cuatro posibles bases (A,B,C,D), por ejemplo: "ACDDCADBCDABDBBA". Para poder detectar el gen 
///	Z, se representa la muestra como una matriz cuadrada (MxM) y se busca en las dos diagonales principales que 
///	todas las bases sean iguales. Siguiendo el ejemplo de la muestra anterior la matriz resultante es

///Galard aclara que para que la muestra sea válida el orden de la matriz (el valor de M) debe
///ser 3x3, 4x4 o 37x37 (según la muestra). Por desgracia, de antemano no es posible saber el
///orden de la matriz y el mismo debe ser inferido de la muestra ingresada.
///Tu misión: hacer un programa que permita ingresar una muestra completa, detectar si es válida,
///y de ser así, que imprima la matriz y muestre un mensaje que indique si se ha detectado o no
///el gen Z. Hoy la humanidad depende de ti.

Algoritmo sin_titulo
	
	Definir bases, muestra, matrizGen Como Caracter
	Definir M Como Entero
	
	///Tarea para el hogar :)
	bases = "ABCD"
	muestra = "BADCABDDD"
	
	Hacer
		
		Escribir "Ingrese una secuencia"
		Leer muestra //"BADCABDDDDA" (ejemplo)
		
	Mientras Que validarMuestra(muestra) == Falso
	Escribir "La muestra es válida"
	
	M = Raiz(Longitud(muestra))
	
	Dimension matrizGen[M, M]
	
	llenarMatriz(matrizGen, muestra, M)
	imprimirMatriz(matrizGen, M)
	
	///Validar las diagonales
	validarMatriz(matrizGen, M)
	
	Escribir "Programa finalizado!"
	
FinAlgoritmo

SubProceso validarMatriz(matriz, m)
	Definir diagonal1, diagonal2 Como Caracter
	Definir i, j Como Entero
	Definir igual Como Logico
	
	Dimension diagonal1[m], diagonal2[m]
	
	///A B A -> [A, D, A]
	///B D D
	///A C A
	
	/// 00 01 02
	/// 10 11 12
	/// 20 21 22
	
	//Extrayendo los elementos de las diagonales y guardandolos en dos vectores
	Para i = 0 Hasta m - 1 //Recorre filas
		Para j = 0 Hasta m - 1 //Recorre columnas
			Si i == j //Diagonal principal
				diagonal1[i] = matriz[i, j]
			FinSi
			Si i + j == m - 1 //Diagonal secundaria
				diagonal2[i] = matriz[i, j]
			FinSi
		FinPara
	FinPara
	
	///diagonal1 -> [A, D, A] elementos
	///             [0, 1, 2] indices
	
	///diagonal2 -> [A, A, A]
	
	//Comparando los elementos de cada vector buscando una diferencia
	igual = Verdadero
	Para i = 0 Hasta m - 1
		Si diagonal1[i] != diagonal1[m - 1] || diagonal2[i] != diagonal2[m - 1]
			igual = Falso
		FinSi
	FinPara
	
	Si igual
		Escribir "Se detecto el Gen Z"
	SiNo
		Escribir "No se detecto el Gen Z"
	FinSi
	
FinSubProceso

SubProceso imprimirMatriz(matriz, m)
	Definir i, j Como Entero
	
	Para i = 0 Hasta m - 1
		Para j = 0 Hasta m - 1
			Escribir matriz[i, j], " " Sin Saltar
		FinPara
		Escribir ""
	FinPara
FinSubProceso

SubProceso llenarMatriz(matriz, muestra, m)
	Definir i, j, x Como Entero
	
	x = 0
	Para i = 0 Hasta m - 1
		Para j = 0 Hasta m - 1
			matriz[i, j] = Subcadena(muestra, x, x)
			x = x + 1
		FinPara
	FinPara
FinSubProceso

Funcion retorno = validarMuestra(muestra)
	///Validar secuencia hasta que sea valida
	Definir retorno Como Logico
	
	Si Raiz(Longitud(muestra)) == 3 || Raiz(Longitud(muestra)) == 4 || Raiz(Longitud(muestra)) == 37
		retorno = Verdadero
	SiNo
		retorno = Falso
	FinSi
FinFuncion

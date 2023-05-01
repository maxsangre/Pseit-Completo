////Realizar un programa que rellene de números aleatorios una matriz a través de un subpro-
////grama y generar otro subprograma que muestre por pantalla la matriz final.
Algoritmo sin_titulo
	Definir matriz, n,m Como Entero
	Escribir "ingrese la dimension de la matriz cuadrada"
	leer n
	m = n
	Dimension matriz[n,m]
	llenarmatriz(matriz, n,m)
	mostrarmatiz(matriz, n)
FinAlgoritmo

SubProceso mostrarmatiz(matriz, n)
	Definir i, j Como Entero
	Para i = 0 Hasta n-1
		para j = 0 Hasta n-1
			escribir Sin Saltar "[",matriz[i,j], "]"
		FinPara
		Escribir ""
	FinPara
	Escribir ""
FinSubProceso

SubProceso llenarmatriz(matriz, n,m)
	Definir i, j Como Entero
	Para i = 0 Hasta n-1
		para j = 0 Hasta m-1
			matriz[i,j] = Aleatorio(1, 9)
		FinPara
	FinPara
FinSubProceso
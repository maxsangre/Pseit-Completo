////Dada una matriz de orden n * m (donde n y m son valores ingresados por el usuario) realizar
////
////un subprograma que llene la matriz de numeros aleatorios. Despues, crearemos otro subpro-
////grama que calcule y muestre la suma de los elementos de la matriz. Mostrar la matriz y los re-
////sultados por pantalla.
Algoritmo sin_titulo
	Definir n,m Como Entero
	Escribir "ingrese las dimensiones de la matriz"
	leer n,m
	matrizes(n,m)
FinAlgoritmo

SubProceso matrizes(n,m)
	Definir i, j, matriz Como Entero
	Dimension matriz[n,m]
	Para i = 0 Hasta n-1
		para j = 0 Hasta m-1
			matriz[i,j] = Aleatorio(0,9)
		FinPara
	FinPara
	
	suma(matriz, n, m)
FinSubProceso

SubProceso suma(matriz, n, m)
	Definir sum, i, j Como Entero
	sum = 0
	Para i = 0 Hasta n-1
		para j = 0 Hasta m-1
			sum = sum + matriz[i,j] 
			Escribir Sin Saltar "[", matriz[i,j], "]"
		FinPara
		Escribir ""
	FinPara
	Escribir ""
	Escribir "La suma de los elemantos de la matriz es: ", sum
FinSubProceso

////Crear una matriz de orden n * m (donde n y m son valores ingresados por el usuario), llenarla
////con números aleatorios entre 1 y 100 y mostrar su traspuesta.
Algoritmo sin_titulo
	Definir matriz, n,m Como Entero
	Escribir "ingrese la dimension de la matriz"
	leer n, m
	Dimension matriz[n,m]
	llenarmatriz(matriz, n,m)
	mostrarmatiz(matriz, n, m)
	mostrarmatiztraspuesta(matriz, n, m)
FinAlgoritmo

SubProceso mostrarmatiztraspuesta(matriz, n, m)
	Definir i, j Como Entero
	Escribir "Matriz traspuesta"
	Para i = 0 Hasta n-1
		para j = 0 Hasta n-1
			escribir Sin Saltar "[",matriz[j,i], "]"
		FinPara
		Escribir ""
	FinPara
	Escribir ""
FinSubProceso

SubProceso mostrarmatiz(matriz, n, m)
	Definir i, j Como Entero
	Escribir "Matriz original"
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
			matriz[i,j] = Aleatorio(1, 100)
		FinPara
	FinPara
FinSubProceso
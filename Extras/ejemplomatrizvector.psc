Algoritmo sin_titulo
	Definir vector, matriz, n Como Entero
	Escribir "Escribir la dimension de el vector y la matriz cuadrada"
	Leer n
	Dimension vector[n], matriz[n,n]
	///  n = filas
	///  m = columnas
	
	llenarmatriz(matriz, vector, n)
	Mostrarmatriz(matriz, vector, n)
FinAlgoritmo

SubProceso Mostrarmatriz(matriz, vector, n)
	Definir i,j Como Entero
	
	para i = 0 Hasta n-1
		para j = 0 Hasta  n - 1
			escribir Sin Saltar "[", matriz[i,j], "]"
		FinPara
		Escribir ""
	FinPara
	Escribir ""
	para i = 0 Hasta n-1
		escribir Sin Saltar "[",vector[i] , "]"
	FinPara
	Escribir ""
FinSubProceso

SubProceso llenarmatriz(matriz, vector, n)
	Definir i,j Como Entero
	
	para i = 0 Hasta n-1
		para j = 0 Hasta  n - 1
			matriz[i,j] = Aleatorio(1,9)
			vector[i] = Aleatorio(1,9)
		FinPara
	FinPara
FinSubProceso
	
////Rellenar en un subproceso una matriz cuadrada con números aleatorios salvo en la diagonal
////	
////	principal, la cual debe rellenarse con ceros. Una vez llena la matriz debe generar otro subpro-
////	ceso para imprimir la matriz.
Algoritmo sin_titulo
	matrizes()
FinAlgoritmo

SubProceso matrizes()
	Definir i, j, matriz Como Entero
	Dimension matriz[3,3]
	Para i = 0 Hasta 2
		para j = 0 Hasta 2
			si i = j
				matriz[i,j] = 0
			SiNo
				matriz[i,j] = Aleatorio(1,9)
			FinSi
		FinPara
	FinPara
	
	Imprimi(matriz)
FinSubProceso

SubProceso Imprimi(matriz)
	Definir i, j Como Entero
	Para i = 0 Hasta 2
		para j = 0 Hasta 2
			Escribir Sin Saltar "[", matriz[i,j], "]" 
		FinPara
		Escribir ""
	FinPara
FinSubProceso

////Realizar un programa que cree una matriz de 5x15 y deberemos llenar la matriz de unos y
////ceros. Llenando el marco o la delimitación externa de la matriz de unos y la parte interna de
////ceros. Por ejemplo, nuestro matriz final debería verse así:
Algoritmo sin_titulo
	llenarmatriz()
FinAlgoritmo

SubProceso mostrarmatiz(matriz)
	Definir i, j Como Entero
	Para i = 0 Hasta 4
		para j = 0 Hasta 14
			escribir Sin Saltar matriz[i,j], " "
		FinPara 
		Escribir ""
	FinPara
	Escribir ""
FinSubProceso

SubProceso llenarmatriz()
	Definir matriz, i, j Como Entero
	Dimension matriz[5,15]
	
	Para i = 0 Hasta 4
		para j = 0 Hasta 14
			si i = 0 o i = 4 o j = 0 o j = 14
				matriz[i,j] = 1
			SiNo
				matriz[i,j] = 0
			FinSi
		FinPara
	FinPara
	mostrarmatiz(matriz)
FinSubProceso
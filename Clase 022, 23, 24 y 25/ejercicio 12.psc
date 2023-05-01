////Realizar un programa que permita visualizar el resultado del producto de una matriz de ente-
////ros de 3x3 por un vector de 3 elementos. Los valores de la matriz y el vector pueden iniciali-
////zarse evitando así el ingreso de datos por teclado. Para conocer más acerca de cómo se rea-
////liza la multiplicación entre matrices consultar el siguiente link:
Algoritmo sin_titulo
	Definir matriz, vector Como Entero
	Dimension matriz[3,3]
	Dimension  vector[3]
	
	llenarmartriz(matriz)
	llenarvector(vector)
	producto(matriz, vector)
FinAlgoritmo

SubProceso producto(matriz, vector)
	Definir i, j, vectorP Como Entero
	Dimension vectorP[3]
	
	para i = 0 Hasta 2
		para j = 0 Hasta 2
			Escribir Sin Saltar "[",matriz[i, j], "]"
		FinPara
	     Escribir ""
	FinPara
	Escribir "    X    "
	para i = 0 Hasta 2
		Escribir Sin Saltar "[",vector[i], "]"
	FinPara
	Escribir ""
	Escribir "    =    "
	para i = 0 Hasta 2
		para j = 0 Hasta 2
			vectorP[i] = (matriz[i,j]*matriz[j,i])*vector[i]
		FinPara
		Escribir Sin Saltar "[",vectorP[i], "]"
	FinPara
	Escribir ""
FinSubProceso

SubProceso llenarvector(vector)
	Definir i Como Entero
	
	para i = 0 Hasta 2
		vector[i] = Aleatorio(1,9)
	FinPara
FinSubProceso

SubProceso llenarmartriz(matriz)
	Definir i,j Como Entero
	
	para i = 0 Hasta 2
		para j = 0 Hasta 2
			matriz[i,j] = Aleatorio(1,9)
		FinPara
	FinPara
FinSubProceso

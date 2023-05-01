////Realizar un programa que calcule la multiplicación de dos matrices de enteros de 3x3. Inicia-
////lice las matrices para evitar el ingreso de datos por teclado.
Algoritmo sin_titulo
	definir matriz1,matriz2 como entero
	Dimension matriz1[3,3]
	Dimension matriz2[3,3]
	rellenarmatriz1(matriz1)
	rellenarmatriz2(matriz2)
	multipliciondematriz(matriz1,matriz2)
FinAlgoritmo

SubProceso multipliciondematriz(matriz1,matriz2)
	Definir i,j, matrizM Como entero
	Definir multiplicion Como Real
	Dimension matrizM[3,3]
	multiplicion = 1
	
	para i = 0 Hasta 2
		para j = 0 Hasta 2
			matrizM[i,j] = matriz1[i,j] * matriz2[i,j]
			multiplicion = multiplicion*(matriz1[i,j] * matriz2[i,j])
		FinPara
	FinPara
	Para i = 0 Hasta 2
		para j = 0 Hasta 2
			escribir Sin Saltar matrizM[i,j], " "
		FinPara 
		Escribir ""
	FinPara
	Escribir ""
	Escribir "El resultado de la multiplicación de dos matrices de enteros de 3x3 es: ", multiplicion
FinSubProceso

SubProceso rellenarmatriz2(matriz2)
	Definir i, j Como Entero
	
	para i = 0 Hasta 2
		para j = 0 Hasta 2
			matriz2[i,j] = Aleatorio(2,9)
		FinPara
	FinPara
	Para i = 0 Hasta 2
		para j = 0 Hasta 2
			escribir Sin Saltar matriz2[i,j], " "
		FinPara 
		Escribir ""
	FinPara
	Escribir ""
FinSubProceso

SubProceso rellenarmatriz1(matriz1)
	Definir i, j Como Entero
	
	para i = 0 Hasta 2
		para j = 0 Hasta 2
			matriz1[i,j] = Aleatorio(2,9)
		FinPara
	FinPara
	Para i = 0 Hasta 2
		para j = 0 Hasta 2
			escribir Sin Saltar matriz1[i,j], " "
		FinPara 
		Escribir ""
	FinPara
	Escribir ""
FinSubProceso
	
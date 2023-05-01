////Realizar un programa que rellene una matriz de 3x3 con 9 valores ingresados por el usuario y
////los muestre por pantalla.
Algoritmo sin_titulo
	matrizes()
FinAlgoritmo

SubProceso matrizes()
	Definir matriz, i, j, num Como Entero
	
	Dimension matriz[3,3]
	
	Para i = 0 Hasta 2
		para j = 0 Hasta 2
			Escribir "Ingrese un numero"
			Leer num
			matriz[i,j] = num
		FinPara
		Escribir ""
	FinPara
	para i = 0 Hasta 2
		para j = 0 Hasta 2
			Escribir Sin Saltar "[", matriz[i,j], "]"
		FinPara
		Escribir ""
	FinPara
	
FinSubProceso

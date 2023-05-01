////Escribir un programa que realice la búsqueda lineal de un número entero ingresado por el
////
////usuario en una matriz de 5x5, llena de números aleatorios y devuelva por pantalla las coorde-
////nadas donde se encuentra el valor, es decir en que fila y columna se encuentra. En caso de no
////
////encontrar el valor dentro de la matriz se debe mostrar un mensaje.
Algoritmo sin_titulo
	matrizes()
FinAlgoritmo

SubProceso matrizes()
	Definir num, cont, i, j, matriz Como Entero
	Dimension matriz[5,5]
	Para i = 0 Hasta 4
		para j = 0 Hasta 4
			matriz[i,j] = Aleatorio(1,10)
		FinPara
	FinPara
	Escribir "Ingrese un numero del 1 al 10 para buscarlo en la matriz"
	Leer num
	Para i = 0 Hasta  4
		Para j = 0 Hasta 4
			escribir Sin Saltar "[", matriz[i,j], "]"
		FinPara
		Escribir ""
	FinPara
	Escribir ""
	cont = 0
	Para i = 0 Hasta 4
		para j = 0 Hasta 4
			si matriz[i,j] == num
				cont = cont + 1
				Escribir "El numero se encuentra en las cordenadas: ", i, ", ",j
			FinSi
		FinPara
	FinPara
	Escribir ""
	si cont < 1 
		Escribir "El numero no se encuentra en la matriz"
	FinSi
FinSubProceso

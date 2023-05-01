////Realizar un programa que rellene un vector con 5 valores ingresados por el usuario y los
////muestre por pantalla.
Algoritmo sin_titulo
	rellanar()
	
FinAlgoritmo

SubProceso rellanar()
	Definir i, j, num, vector Como Entero
	Dimension vector[5]
	para i = 0 Hasta 4 Hacer
		Escribir "Ingrese el valor de la variable"
		Leer num
		vector[i] = num
		///    0
	FinPara
	para j = 0 Hasta  4
		///        0   
		si vector[j] != vector[4]
			Escribir Sin Saltar vector[j] ", "
		SiNo
			Escribir Sin Saltar vector[j]
		FinSi
		
	FinPara
	Escribir ""
FinSubProceso
	
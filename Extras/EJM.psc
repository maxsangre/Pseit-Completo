//Realizar un programa que rellene un vector con 5 valores ingresados por el usuario y los
//muestre por pantalla.
Algoritmo activ1
	
	Definir vector , i, num Como Entero
	Dimension vector(5)
	
	
	Para i<- 0  Hasta 4 Con Paso 1 Hacer
		escribir "ingrese valores"
		leer num
		vector[i] = num
	Fin Para
	
	Para i<- 0  Hasta 4 Con Paso 1 Hacer
		escribir sin saltar vector[i]
	Fin Para
	Escribir ""
	
FinAlgoritmo




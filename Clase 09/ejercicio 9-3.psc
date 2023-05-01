Algoritmo sin_titulo
////	Escribir un programa que calcule el cuadrado de los 9 primeros números naturales e
////    imprima por pantalla el número seguido de su cuadrado. Ejemplo: "2 elevado al cuadrado
////	es igual a 4", y así sucesivamente.
	
	definir i, num, potencia Como Entero
	
	para i = 0 Hasta 8 Hacer
		Escribir "Ingrese un numero"
		Leer num
		potencia = num ^ 2
		Escribir num, " elevado al cuadrado es igual a ", potencia 
	FinPara
FinAlgoritmo

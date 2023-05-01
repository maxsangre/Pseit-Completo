////Realizar un procedimiento que permita realizar la división entre dos números y muestre el co-
////ciente y el resto utilizando el método de restas sucesivas.
////
////El método de división por restas sucesivas consiste en restar el dividendo con el divisor hasta
////obtener un resultado menor que el divisor, este resultado es el residuo, y el número de restas
////realizadas es el cociente. Por ejemplo: 50 / 13:
////		50 ? 13 = 37 una resta realizada
////		37 ? 13 = 24 dos restas realizadas
////		24 ? 13 = 11 tres restas realizadas
////	dado que 11 es menor que 13, entonces: el residuo es 11 y el cociente es 3.
Algoritmo sin_titulo
	Definir num1, num2 Como Entero
	
	Escribir "Ingrese un numero"
	Leer num1
	Escribir "Ingrese un divisor"
	Leer num2
	Escribir ""
    divisor(num1, num2)	
	
	
FinAlgoritmo

SubProceso divisor(num1 Por Referencia, num2 Por Referencia)
	Definir aux, contador Como Real
	aux = num1
	contador = 1
	
	Mientras aux > num2 Hacer
		aux = (aux - num2) 
		si aux > num2
			contador = contador + 1
		FinSi
	FinMientras
	Escribir "El dividendo: ", contador, " el resto es: ", aux
FinSubProceso

















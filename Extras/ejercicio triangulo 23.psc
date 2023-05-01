//// 6) Desarrolle un programa que permita leer un número entero mayor a 3 que representa la cantidad de filas y el programa imprima un triángulo con números de acuerdo al número de filas que se ingresa como dato. El triángulo se forma con números, dejando espacios en blanco al inicio de cada fila tal y como se muestra en los ejemplos:
//// (*) El programa:
////	
////	? Debe validar el ingreso del número de filas. Dato mayor o igual a 3.
////	? El triángulo tiene tantas filas como indica el dato de entrada, y la cantidad de números que se imprime en cada fila aumenta de dos en dos, en la primera fila hay un solo número, en la segunda fila hay 3 números, en la tercera fila hay 5 números y asi suscesivamente.
////	? Los números que se imprimen en cada fila empieza en 1 y van hasta el 9, luego se imprime del cero, uno, dos y hasta el número que corresponda.
//// EJEMPLOS 1 :
////	
//// Filas : 1
//// Filas : 0
//// Filas : -2
//// Filas : 7
////	
////	      1
////	     123
////	    12345
////	   1234567
////	  123456789
////	 12345678901
////	1234567890123
////          
Algoritmo sin_titulo
	Definir i, j, num, k, contador Como Entero
	definir comp como logico;
	
	comp = Falso;
	
	Hacer
		Escribir "Ingresa un numero mayor a 3:";
		Leer num;
		si num >= 3 entonces;
			comp = Verdadero;
		FinSi
	Mientras Que comp == Falso;
	
	contador = 1
	
	/// 1 MOD 10 -> 1
	/// 2 MOD 10 -> 2
	/// 3 MOD 10 -> 3
	/// 4 MOD 10 -> 4
	/// 5 MOD 10 -> 5
	/// Etc....
	Para i = 0 Hasta  num-1 Hacer
		Para j = 1 Hasta num-i Hacer
			Escribir Sin Saltar " "
		FinPara
		Para k = 1 Hasta contador Hacer
			Escribir Sin Saltar k MOD 10
		FinPara
		contador = contador + 2
		Escribir ""
	FinPara
	
FinAlgoritmo

Algoritmo sin_titulo
//////	Escriba un programa que lea un número entero (altura) y a partir de él cree una escalera
//////	invertida de asteriscos con esa altura. Por ejemplo, si ingresamos una altura de 5 se
//////	deberá mostrar:
//////		*****
//////		****
//////		***
//////		**
//////      *
	
	Definir i, j, altura Como Entero
	
	Escribir "Ingrese la altura de tu escalera"
	Leer altura
	///   5
	
	Para i = 0 Hasta altura-1 Con Paso 1 Hacer
		para j = 1 Hasta altura-i Con Paso 1 Hacer
			// Cantidad de "*" que vamos a Escribir 
			////          5 - 0 = 5  
			////          5 - 1 = 4 
			////          5 - 2 = 3
			////          5 - 3 = 2
			////          5 - 4 = 1
			Escribir Sin Saltar "*"
			// Representacion grafica
			////               *****
			//                salto entre cada vuelta de "j"
			////               **** 
			////               *** 
			////               **
			////               *
		FinPara
		// Nuestro salto entre cada vuelta de "j"
		Escribir ""
	FinPara
FinAlgoritmo

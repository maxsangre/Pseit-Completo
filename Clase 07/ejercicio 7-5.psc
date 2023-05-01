Algoritmo sin_titulo
	///Dada una secuencia de números ingresados por teclado que finaliza con un ?1, por
    ///ejemplo: 5,3,0,2,4,4,0,0,2,3,6,0,......,-1; realizar un programa que calcule el promedio de los
	///números ingresados. Suponemos que el usuario no insertará número negativos.
	
	definir num, contador, suma Como Entero
	Escribir "Ingrese un numero"
	leer num
	contador = 0
	suma = 1
	Mientras num <> -1 Hacer
		Escribir "Ingrese un numero"
		leer num
		si num <> -1 Entonces
			suma = suma + num
			contador = contador +1
		SiNo
			Escribir "El promedio es: ", (suma / contador)
		FinSi
	FinMientras
FinAlgoritmo

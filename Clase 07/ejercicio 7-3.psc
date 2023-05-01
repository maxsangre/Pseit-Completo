Algoritmo sin_titulo
	///Escriba un programa que valide si una nota está entre 0 y 10, sino está entre 0 y 10 la nota
	///se pedirá de nuevo hasta que la nota sea correcta.
	Definir num Como Entero
	Escribir "Ingrese un numero entre 0 y 10"
	leer num
	
	mientras num < 0 o num > 10 Hacer
		Escribir "El numero es incorrecto, ingrese un numero entre 0 y 10"
		leer num
	FinMientras
	
	Escribir "El numero es CORRECTO"
FinAlgoritmo

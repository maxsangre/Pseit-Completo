Algoritmo sin_titulo
	///Escriba un programa en el cual se ingrese un valor l�mite positivo, y a continuaci�n solicite
	///n�meros al usuario hasta que la suma de los n�meros introducidos supere el l�mite inicial.
	
	Definir num, suma, i Como Entero
	Escribir "Ingrese un numero"
	leer num
	suma = 0
	i = 1
	Mientras i <= num Hacer
		suma = suma + i 
		i = i + 1
		Escribir suma
	FinMientras
	
	Escribir "La suma de los numeros introducidos es: ", suma
FinAlgoritmo

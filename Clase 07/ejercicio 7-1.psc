Algoritmo sin_titulo
	///Diseña un programa que guarde una vocal secreta en una variable, debemos pedirle al usuario
	///que intente adivinar la vocal secreta, e intentará tantas veces como sea necesario hasta que la
	///adivine.
	Definir vocals, vocal Como Caracter
	vocals = "o"
	Escribir "Ingrese una letra vocal para adivinar la vocal secreta."
	Leer vocal
	vocal = Minusculas(vocal)
	Mientras vocal <> vocals Hacer
		Escribir "Ingrese una letra vocal para adivinar la vocal secreta."
		Leer vocal
	FinMientras
	
	Escribir "Igreso la vocal secreta"
	
FinAlgoritmo

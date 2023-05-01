Algoritmo sin_titulo
////	Se pide escribir un programa que calcule la suma de los N primeros números pares. Es
////	decir, si ingresamos el número 5 como valor de N, el algoritmo nos debe realizar la suma
////	de los siguientes valores: 2+4+6+8+10.
	
	Definir num, i, suma, contador Como Entero
	i = 0
	suma = 0
	contador = 0
	Escribir "Ingrese un numero"
	leer num
	Repetir
		i = i + 2
		suma = suma + i
		contador = contador + 1 
		Escribir i
	Mientras Que contador < num
	
	Escribir "La suma de los valores es: ", suma
FinAlgoritmo

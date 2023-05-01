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
		//// 0 + 2
		///  2  + 2
		
		i = i + 2
		///     0   +  2
		///     2    +  4
		suma = suma + i
		///             0   +  1
		///             5    +  1
		contador = contador + 1 
		Escribir i
	Mientras Que contador < num
	////              5         5
	Escribir "La suma de los valores es: ", suma
FinAlgoritmo

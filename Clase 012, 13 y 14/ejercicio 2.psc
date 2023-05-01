Funcion retorno <- impar (num Por Referencia )
	Definir retorno Como Logico
	retorno = (num mod 2 <> 0)
Fin Funcion
Algoritmo sin_titulo
	Definir num Como Entero
	
	Repetir
		Escribir "Ingrese un numero IMPAR"
		Leer num
		Escribir "El numero ingresado es impar? Esta afirmación es: ", impar(num)
		Escribir ""
	Mientras Que impar(num) == Verdadero
	
FinAlgoritmo

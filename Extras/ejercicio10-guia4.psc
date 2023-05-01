Funcion retorno <- sumaDigitos (num Por Valor)
	Definir aux, suma, retorno Como Entero
	suma = 0
	Mientras (num > 0) Hacer
		aux = num mod 10
		suma = suma + aux
		num = (trunc(num/10))
	FinMientras
	retorno = suma
FinFuncion

Algoritmo sin_titulo
	Definir num Como Entero
	
	Escribir "Ingrese un numero " 
	Leer num
	
	Escribir "La suma de los digitos del numero: ", num ," es ", sumaDigitos(num)
	
FinAlgoritmo

Algoritmo sin_titulo
	Definir num, aux, aux1 Como Entero
	
	Escribir "Ingrese un numero"
	Leer num
	
	Repetir
		aux = 0
		Mientras num <> 0 Hacer
			num = trunc(num/10)
			aux = aux + 1
		FinMientras
		Escribir "El número de dígitos que componen a el valor ingresado es de ", aux
		Escribir ""
		Escribir "Ingrese un numero"
		Leer num
	Mientras Que num <> 0
FinAlgoritmo

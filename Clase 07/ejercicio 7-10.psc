Algoritmo sin_titulo
    ////	Escribir un programa que calcule cuántos dígitos tiene un número entero positivo sin
    ////    convertirlo a cadena (pista: se puede hacer dividiendo varias veces entre 10). Nota:
	////    investigar la función trunc().
	
	Definir num, aux Como Entero
	Escribir "Ingrese un numero"
	leer num
	aux = 0
	Mientras num <> 0 Hacer
		si num <> 1 Entonces
			num = trunc(num/10)
			aux = aux + 1
			Escribir  aux
		FinSi
	FinMientras
	Escribir ""
FinAlgoritmo

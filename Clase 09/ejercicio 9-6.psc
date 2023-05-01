Algoritmo sin_titulo
////	Realizar un programa que muestre la cantidad de números que son múltiplos de 2 o de 3
////	comprendidos entre 1 y 100.
	
	Definir i, contador2, contador3 Como Entero
	
	contador2 = 0
	contador3 = 0
	
	para i = 0 Hasta 99 Con Paso  1 Hacer
		si (i mod 2 == 0 ) Entonces
			Escribir i, " Es multiplo de 2"
			contador2 = contador2 + 1
		sino 
			si (i mod 3 == 0 ) Entonces
				Escribir i " Es multiplo de 3"
				contador3 = contador3 + 1
			FinSi
		FinSi
	FinPara
	
	Escribir "Hay ", contador2, " multiplo de 2"
	Escribir "Hay ", contador3, " multiplo de 3"
FinAlgoritmo

Algoritmo sin_titulo
////	Escribir un programa que calcule la suma de los N primeros n�meros naturales. El valor de
////	N se leer� por teclado.
	
	Definir i, n, suma Como Entero
	
	suma = 0
	
	Escribir "Ingrese un numero"
	Leer n
	
	para i = 1 Hasta n Con Paso 1 Hacer
		suma = suma + i
		si i <> n Entonces
			Escribir Sin Saltar Concatenar(ConvertirATexto(i), " + ")
		sino
			Escribir Sin Saltar Concatenar(ConvertirATexto(i), ": ")
		FinSi
	FinPara
	Escribir suma
	
FinAlgoritmo

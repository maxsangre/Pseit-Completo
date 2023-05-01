////Realizar un programa que pida al usuario una frase y una letra a buscar en esa frase. La fun-
////ción debe devolver la cantidad de veces que encontró la letra. Nota: recordar el uso de la fun-
////	ción Subcadena().
Funcion retorno <- contador (frase Por Referencia, letra Por Referencia )
	Definir retorno, i, cont Como Entero
	cont = 0
	///   palabra // restamos 1 para quitar el desfasaje entre longitud y subcadena
	///   1234567 // longitud
	///   0123456 // subcadena
	
	Para i = 0 Hasta Longitud(frase)-1 Hacer
		si Subcadena(frase, i, i) == letra Entonces
			cont = cont + 1	
			retorno = cont
		FinSi
	FinPara
	
Fin Funcion
Algoritmo sin_titulo
	
	Definir frase, letra Como Caracter
	
	Escribir "Ingrese una frase"
	Leer frase
	Escribir "Ingrese la letra que desea contar"
	Leer letra
	
	Escribir "La cantidad de veces que se encuentra ", Mayusculas(letra), " en el texto es: ", contador(frase, letra)
	
FinAlgoritmo

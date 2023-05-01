////Escribir un programa que procese una secuencia de caracteres ingresada por teclado y termi-
////nada en punto, y luego codifique la palabra o frase ingresada de la siguiente manera: cada vo-
////	cal se reemplaza por el carácter que se indica en la tabla y el resto de los caracteres (inclu-
////	yendo a las vocales acentuadas) se mantienen sin cambios.
////	
////	a e i o u
////	@ # $ % *
////	
////	Realice un subprograma que reciba una secuencia de caracteres y retorne la codificación co-
////	rrespondiente. Utilice la estructura ?según? para la transformación.
////		
////	Por ejemplo, si el usuario ingresa: Ayer, lunes, salimos a las once y 10.
////		La salida del programa debería ser: @y#r, l*n#s, s@l$m%s @ l@s %nc# y 10.
////		NOTA: investigue el uso de la función concatenar de PSeInt para armar la palabra/frase.
Algoritmo sin_titulo
	Definir  frase Como Caracter
	
	Escribir "Ingrese una palabra o frase"
	Leer frase
	Escribir ""
	convertidor(frase)
	
FinAlgoritmo

SubProceso convertidor(frase Por Referencia)
	Definir i Como Entero
	
	Para  i = 0 Hasta Longitud(frase)-1 Hacer
		Segun Subcadena(frase, i, i) Hacer
			"a":
				Escribir Sin Saltar "@"
			"e":
				Escribir Sin Saltar "#"
			"i":
				Escribir Sin Saltar "$"
			"o":
				Escribir Sin Saltar "%"
			"u":
				Escribir Sin Saltar "*"
			De Otro Modo:
				Escribir Sin Saltar Subcadena(frase, i, i)
		FinSegun
	FinPara
	Escribir ""
FinSubProceso

////Escribir un programa que procese una secuencia de caracteres ingresada por teclado y termi-
////nada en punto, y luego codifique la palabra o frase ingresada de la siguiente manera: cada vo-
////	cal se reemplaza por el carácter que se indica en la tabla y el resto de los caracteres (inclu-
////	yendo a las vocales acentuadas) se mantienen sin cambios.
////a e i o u
////@ # $ % *
Algoritmo sin_titulo
	Definir palabra Como Caracter
	Escribir "Ingrese una palabra o frase"
	Leer palabra
	
	cambiodecaracter(palabra)
FinAlgoritmo

SubProceso cambiodecaracter(palabra)
	Definir i Como Entero
	palabra = Minusculas(palabra)
	Para  i = 0 Hasta Longitud(palabra) - 1
		///                     1234567
		Segun Subcadena(palabra, i, i)
			////        0123456
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
				Escribir Sin Saltar Subcadena(palabra,i,i)
		FinSegun
	FinPara
	Escribir ""
FinSubProceso

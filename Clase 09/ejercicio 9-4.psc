Algoritmo sin_titulo
////	Realizar un programa que pida una frase y el programa deber� mostrar la frase con un
////    espacio entre cada letra. La frase se mostrar� as�: H o l a. Nota: recordar el funcionamiento
////	de la funci�n Subcadena().
////	NOTA:. En PseInt, si queremos escribir sin que haya saltos de l�nea, al final de la operaci�n
////	"escribir" escribimos "sin saltar". Por ejemplo:
////	Escribir sin saltar "Hola, "
////	Escribir sin saltar "c�mo est�s?"
////	Imprimir� por pantalla: Hola, c�mo est�s?
	
	Definir i como entero
	Definir palabra Como Caracter
	
	Escribir "Ingrese una palabra"
	Leer palabra
	//// 1234567
	//// 0123456
	para i = 0 Hasta Longitud(palabra)-1 Hacer
		Escribir Sin Saltar Concatenar(Subcadena(palabra, i, i) " ")
		////                                      0123456
	FinPara
	
	Escribir ""
FinAlgoritmo

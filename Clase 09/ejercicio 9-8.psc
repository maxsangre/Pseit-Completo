Algoritmo sin_titulo
////	Siguiendo el ejercicio 2 de los ejercicios principales, ahora deberemos hacer lo mismo
////    pero que la cadena se muestre al revés. Por ejemplo, si tenemos la cadena: Hola,
////	deberemos mostrar a l o H.
	
	Definir i Como Entero
	Definir palabra Como Caracter
	
	Escribir "Ingrese una palabra"
	leer palabra
	
	Para i = Longitud(palabra)-1 hasta 0 Con Paso -1 hacer
		Escribir Sin Saltar Concatenar(Subcadena(palabra, i, i) " ") 
	FinPara
	
	Escribir ""
	
FinAlgoritmo

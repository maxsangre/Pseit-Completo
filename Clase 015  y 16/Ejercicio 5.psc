////Crea un procedimiento ?convertirEspaciado?, que reciba como argumento un texto y muestra
////una cadena con un espacio adicional tras cada letra.
////Por ejemplo, ?Hola, tú? devolverá ?H o l a , t ú ?. Crea un programa principal donde se use
////dicho procedimiento.
Algoritmo sin_titulo
	Definir frase Como Caracter
	
	Escribir "Ingrese una palabra o frase"
	Leer frase
	Escribir ""
	espaciador(frase)
	
FinAlgoritmo

SubProceso espaciador(frase Por Referencia)
	Definir i Como Entero
	para i = 0 Hasta  Longitud(frase) - 1 Hacer
		si Subcadena(frase, i, i) != " " Entonces
			Escribir Sin Saltar Concatenar(Subcadena(frase, i, i), " ")
		FinSi
	FinPara
	Escribir ""
FinSubProceso

////Rellenar una matriz, de 3 x 3, con una palabra de 9 de longitud, pedida por el usuario, encon-
////trando la manera de que la frase se muestre de manera continua en la matriz.
////
////Por ejemplo, si tenemos la palabra habilidad, nuestra matriz se debería ver así:
////		H A B
////		I L I
////		D A D
////Nota: recordar el uso de la función Subcadena().
Algoritmo sin_titulo
	Definir palabra, matriz Como Caracter
	Dimension matriz[3,3]
	Repetir
		Escribir "Ingrese una palabra de 9 letras"
		Leer palabra
	Mientras Que Longitud(palabra) != 9
	
	llenarmatriz(matriz, palabra)
	mostrarmatriz(matriz)
FinAlgoritmo

SubProceso mostrarmatriz(matriz)
	Definir i,j Como Entero
	
	para i = 0 Hasta 2
		para j = 0 Hasta 2
			Escribir Sin Saltar matriz[i,j] " "
		FinPara
		Escribir ""
	FinPara
FinSubProceso


SubProceso llenarmatriz(matriz, palabra)
	Definir i,j, aux Como Entero
	aux = 0
	para i = 0 Hasta 2
		para j = 0 Hasta 2
			matriz[i,j]=Subcadena(palabra,aux, aux)
			aux = aux + 1
			///         123                      123456789
			///         456
			///         789
		FinPara
	FinPara
FinSubProceso
	
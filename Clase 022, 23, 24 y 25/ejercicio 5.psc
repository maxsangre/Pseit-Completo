////Rellenar una matriz, de 3 x 3, con una palabra de 9 de longitud, pedida por el usuario, encon-
////trando la manera de que la frase se muestre de manera continua en la matriz.
////
////Por ejemplo, si tenemos la palabra habilidad, nuestra matriz se debería ver así:
Algoritmo sin_titulo
	matrizes()
FinAlgoritmo

SubProceso matrizes()
	Definir i, j, contador Como Entero
	Definir palabra, matriz Como Caracter
	Repetir
		Escribir "Ingrese una palabra de 9 letras"
		Leer palabra
	Mientras Que Longitud(palabra) != 9
	Dimension matriz[3,3]
	contador = 0
	Para i = 0 Hasta 2
		para j = 0 Hasta 2
			matriz[i,j] = Subcadena(palabra, contador, contador)
			contador = contador + 1
		FinPara
	FinPara
	Para i = 0 Hasta 2
		para j = 0 Hasta 2
			Escribir Sin Saltar "[", matriz[i,j], "]"
		FinPara
		Escribir ""
	FinPara
FinSubProceso


Algoritmo sin_titulo
	////	Realizar un programa que lea un n�mero entero (tama�o del lado) y a partir de �l cree un
	////	cuadrado de asteriscos de ese tama�o. Los asteriscos s�lo se ver�n en el borde del
	////    cuadrado, no en el interior. Por ejemplo, si se ingresa el n�mero 4 se debe mostrar:
	////		* * * *
	////		*     *
	////		*     *
	////        * * * *
	////      j   j   j   j 
	////   i 0,0 0,1 0,2 0,3
	////   i 1,0 1,1 1,2 1,3
	////   i 2,0 2,1 2,2 2,3
	////   i 3,0 3,1 3,2 3,3
	
	Definir i, j, num Como Entero
	
	Escribir "Ingrese un numero"
	Leer num
	
	// "i" es el valor de nuestras ----------
	para i = 0 Hasta num-1 Hacer
		// "j" es el valor de columnas
		Para j = 0 Hasta  num-1 Hacer
			si i = 0 o i = num-1 o j = 0 o j = num-1 Entonces
				Escribir Sin Saltar "* " // Pared, techo y piso de nuestro cuadrado 
				////		* * * *
				//   salto de linea entre cada vuelta de "j"
				////		*     *
				////		*     *
				////        * * * *
			SiNo
				Escribir Sin Saltar "  " // Espacio en blanco dentro del cuadrado
			FinSi
		FinPara
		Escribir "" // salto de linea entre cada vuelta de "j"
	FinPara
	
	Escribir ""
FinAlgoritmo

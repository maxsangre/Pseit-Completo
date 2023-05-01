////7) Realizar un programa que lea un número entero (tamaño del cuadrado) y a partir de él cree un
////cuadrado de asteriscos de ese tamaño. Los asteriscos sólo se verán en el borde del
////cuadrado, en el interior debera mostrar una cruz. Por ejemplo, si se ingresa el número 5 se debe mostrar:
////		
////		* * * * *
////		* X   X *
////		*   X   *
////		* X   X *
////		* * * * *
////      j   j   j   j 
////   i 0,0 0,1 0,2 0,3
////   i 1,0 1,1 1,2 1,3
////   i 2,0 2,1 2,2 2,3
////   i 3,0 3,1 3,2 3,3
Algoritmo sin_titulo
	Definir i, j, num Como Entero
	
	Escribir "Ingrese el tamaño del cuadrado"
	Leer num
	
	para i = 0 Hasta num-1 Hacer
		para j = 0 Hasta num-1 Hacer
			Si i = 0 o i = num-1 o j = 0 o j = num-1 Entonces
				Escribir Sin Saltar "* "
			SiNo
				Si i == j o (i + j == num -1 )
					Escribir Sin Saltar "X "
				SiNo
					Escribir Sin Saltar "  "
				FinSi
			FinSi
		FinPara
		Escribir ""
	FinPara
	
	
FinAlgoritmo

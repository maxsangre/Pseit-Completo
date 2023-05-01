////Una matriz mágica es una matriz cuadrada (tiene igual número de filas que de columnas) que
////tiene como propiedad especial que la suma de las filas, las columnas y las diagonales es igual.
////Por ejemplo:
////	2 7 6
////	9 5 1
////	4 3 8
////En la matriz de ejemplo las sumas son siempre 15. Considere el problema de construir un algo-
////ritmo que compruebe si una matriz de datos enteros es mágica o no, y en caso de que sea		
////mágica escribir la suma. Además, el programa deberá comprobar que los números introduci-
////dos son correctos, es decir, están entre el 1 y el 9. El usuario ingresa el tamaño de la matriz		
////que no debe superar orden igual a 10.
Algoritmo sin_titulo
	Definir matriz, n,m, sumad, sumaf, sumac Como Entero
	Definir validar Como Logico
	Escribir "ingrese la dimension de la matriz cuadrada"
	leer n
	m = n
	Dimension matriz[n,m]
	Repetir
		llenarmatriz(matriz, n,m)
		mostrarmatiz(matriz, n)
		sumaf = sumadorfilas(matriz, n)
		sumac = sumadorcolumnas(matriz, n)
		sumad = sumadordiagonales(matriz, n)
		validar = matrizmagica(sumad, sumac,sumaf)
	Mientras Que validar == Falso
FinAlgoritmo

SubProceso retorno<- matrizmagica(sumad,sumac,sumaf)
	Definir retorno Como Logico
	si sumac == sumaf y sumac == sumad 
		retorno = Verdadero
		Escribir "Se encontro la matriz magica"
		Escribir "La suma de los valores de la matriz es: ", sumad
	SiNo
		retorno = Falso
		escribir "No se encontro la matriz magica"
	FinSi
	
FinSubProceso

SubProceso retorno <- sumadordiagonales(matriz, n)
	Definir i,j, sumadiagonal, aux,retorno Como Entero
	sumadiagonal = 0
	Para i = 0 Hasta n-1
		para j = 0 Hasta n-1
			si i=j
				sumadiagonal = sumadiagonal + matriz[i,j]
			FinSi
		FinPara
	FinPara
	aux = sumadiagonal
	sumadiagonal = 0
	Para i = 0 Hasta n-1
		para j = 0 Hasta n-1
			si i + j == n-1
				sumadiagonal = sumadiagonal + matriz[i,j]
			FinSi
		FinPara
	FinPara
	
	si aux != sumadiagonal
		retorno = 0
	SiNo
		retorno = aux
	FinSi
FinSubProceso

SubProceso retorno <- sumadorcolumnas(matriz, n)
	Definir i,j, sumacolumnas, aux, contador,  retorno  Como Entero
	contador = 0
	Para i = 0 Hasta n-1
		sumacolumnas = 0
		para j = 0 Hasta n-1
			sumacolumnas = sumacolumnas + matriz[j,i]
		FinPara
		si i = 0 y j = n
			aux = sumacolumnas
		FinSi
		si aux != sumacolumnas
			contador = 1
		FinSi
	FinPara
	
	si contador > 0
		retorno = 0
	SiNo
		retorno = aux
	FinSi
FinSubProceso

SubProceso retorno <- sumadorfilas(matriz, n)
	Definir i,j, sumafilas, aux, contador, retorno Como Entero
	contador = 0
	Para i = 0 Hasta n-1
		sumafilas = 0
		para j = 0 Hasta n-1
			sumafilas = sumafilas + matriz[i,j]
		FinPara
		si i = 0 y j = n
			aux = sumafilas
		FinSi
		si aux != sumafilas
			contador = 1
		FinSi
	FinPara
	
	si contador > 0
		retorno = -1
	SiNo
		retorno = aux
	FinSi
FinSubProceso

SubProceso mostrarmatiz(matriz, n)
	Definir i, j Como Entero
	Para i = 0 Hasta n-1
		para j = 0 Hasta n-1
			escribir Sin Saltar "[",matriz[i,j], "]"
		FinPara
		Escribir ""
	FinPara
	Escribir ""
FinSubProceso

SubProceso llenarmatriz(matriz, n,m)
	Definir i, j Como Entero
	Para i = 0 Hasta n-1
		para j = 0 Hasta m-1
			matriz[i,j] = Aleatorio(1, 3)
		FinPara
	FinPara
FinSubProceso

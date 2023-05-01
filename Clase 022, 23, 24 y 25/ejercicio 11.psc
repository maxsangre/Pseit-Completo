////Crear una matriz que contenga 3 columnas y la cantidad filas que decida el usuario. Las dos
////primeras columnas contendrán valores enteros ingresados por el usuario y en la 3 columna se
////deberá almacenar el resultado de sumar el número de la primera y segunda columna. Mostrar
////la matriz de la siguiente forma:
Algoritmo sin_titulo
	Definir matriz, n Como Entero
	Escribir "Ingrese el numero de filas de la matriz"
	leer n
	Escribir ""
	Dimension matriz[n,3]
	llenarmatriz(matriz, n,3)
	mostrarmatiz(matriz, n, 3)
FinAlgoritmo

SubProceso mostrarmatiz(matriz, n, 3)
	definir i,j Como Entero
	Para i = 0 Hasta n-1
		Escribir ""
		para j = 0 Hasta 2
			si matriz[i,j] < matriz[n-1,1]
				escribir Sin Saltar matriz[i,j], " + "
			FinSi
			Si matriz[i,j] == matriz[n-1,1]
				escribir Sin Saltar matriz[i,j], " = "
			FinSi
			Si matriz[i,j] > matriz[n-1,1]
				escribir Sin Saltar matriz[i,j]
			FinSi
		FinPara 
	FinPara
	Escribir ""
FinSubProceso

SubProceso llenarmatriz(matriz, n,3)
	Definir i, j, num Como Entero
	
	para i = 0 Hasta n-1
		para j = 0 Hasta 1
			Escribir "Ingrese un numero"
			Leer num
			matriz[i,j] = num
		FinPara
	FinPara
	para i = 0 Hasta n-1
		para j = 2 Hasta 2
			matriz[i,j] = matriz[0,0] + matriz[0,1]
		FinPara
	FinPara
FinSubProceso

Algoritmo Eje_5_matrices_extra
	definir matriz_suma,i,j,fila,num Como Entero
	
	escribir" ingrese la cantidad de sumas que va a realizar"
	leer fila
	Dimension matriz_suma(fila,3)
	escribir " ingrese 2 numeros para sumar "
	para i<- 0 Hasta fila-1
		Escribir "suma " i+1
		Escribir ""
		para j <-0 Hasta 2
			si j=0 o j=1
				Leer matriz_suma(i,j)
			SiNo
				si j=2
					matriz_suma(i,j) = matriz_suma(i,0) + matriz_suma(i,1)
				FinSi
				
			FinSi
			
		FinPara
	FinPara
	escribir " "
	escribir "resultado "
	escribir " "
	para i<- 0 Hasta fila-1
		
				escribir sin saltar  matriz_suma(i,0) " + " matriz_suma(i,1) " = " matriz_suma(i,2)
				escribir " "
			FinPara
			escribir " "
FinAlgoritmo
////	5. Crear una matriz que contenga 3 columnas y la cantidad filas que decida el usuario. Las dos
////	primeras columnas contendrán valores enteros ingresados por el usuario y en la 3 columna se
////	deberá almacenar el resultado de sumar el número de la primera y segunda columna. Mostrar
////	la matriz de la siguiente forma:
////	3 + 5 = 8
////	4 + 3 = 7
////	1 + 4 = 5
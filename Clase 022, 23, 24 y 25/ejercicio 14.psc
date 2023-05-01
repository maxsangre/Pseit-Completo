Algoritmo sin_titulo
	definir vectorA, vectorB Como Caracter
	Definir matrix, aux Como Entero
	Dimension vectorA[4], vectorB[5], matrix[4,5]
	vectorB[0]="Norte"
	vectorB[1]="Sur"
	vectorB[2]="Este"
	vectorB[3]="Oeste"
	vectorB[4]="Centro"
	ventas(matrix)
	aux=0
	vendedor(vectorA)
	Hacer
		Escribir "Ingrese la opcion deseada: "
		Escribir "1. Zona"
		Escribir "2. vendedor"
		Escribir "3. total"
		Escribir "0. Salir"
		leer aux
		Segun aux Hacer
			1:
				Limpiar Pantalla
				totventaszona(matrix, vectorB)
			2:
				Limpiar Pantalla
				totventasvendedor(matrix, vectorA, vectorB)
			3:
				Limpiar Pantalla
				sumartodo(matrix)
			0:
				Limpiar Pantalla
				Escribir "Saliendo..."
				Esperar 2 Segundos
			De Otro Modo:
				Escribir "La opcion es incorrecta"
		Fin Segun
	Mientras Que aux <> 0
	impri(vectorA)
	imprimat(matrix)
FinAlgoritmo

SubProceso vendedor(vector)
	definir i Como Entero
	definir aux Como Caracter
	Para  i<-0 Hasta 3 Hacer
		escribir "Ingrese el nombre del vendedor " i+1
		leer aux
		vector(i)=aux
	FinPara
FinSubProceso

SubProceso ventas(matrix)
	definir i, j Como Entero
	para i<-0 Hasta  3 Hacer
		para j<-0 Hasta 4 Hacer
			matrix[i,j]=Aleatorio(1,9)
		FinPara
	FinPara
FinSubProceso
 ////   ????????
////   ?   ?   ?
///   ????????
SubProceso imprimat(matrix)
	definir i, j, k, m Como Entero
	Escribir ""
	Escribir "                --------------------             "
	Escribir "                | VENTAS MENSUALES |             "
	Escribir "                --------------------             "
	Escribir "    _____________________________________________"
	Escribir "    | NORTE |   SUR  |  ESTE  | OESTE  | CENTRO |"
	para i<-0 Hasta 3 Hacer
		para j<-0 Hasta 3 Hacer
			si j=0
				escribir Sin Saltar "    |  [", matrix[i,j] "]  |" Sin Saltar
			FinSi
			escribir Sin Saltar "   [", matrix[i,j] "]  |" Sin Saltar
		FinPara
		escribir " "
	FinPara
	Escribir "    ---------------------------------------------"
FinSubProceso

SubProceso impri(vector)
	Definir i Como Entero
	Limpiar Pantalla
	Escribir "La venta de los vendedores: " Sin Saltar
	para i<-0 hasta 3 Hacer
		si i < 2
			escribir Sin Saltar  vector(i), ", "
		FinSi
		si i == 2
			escribir Sin Saltar vector(i), " y "
		FinSi
		si i == 3
			escribir Sin Saltar vector(i)
		FinSi
	FinPara
	Escribir ""
FinSubProceso

SubProceso totventaszona(matrix, vectorB)
	definir i, j, aux, suma Como Entero 
	hacer 
	Escribir "Que zona quiere saber el total de ventas"
	para i<-0 Hasta 4 Hacer
		Escribir i+1, " " vectorB(i) sin saltar 
		escribir " "
	FinPara
	leer aux
	Mientras Que aux > 5 o aux < 1
	Segun aux-1 Hacer
		0:
			Limpiar Pantalla
			Escribir "Las ventas de la zona " vectorB(0) " fueron " matrix(0,0)+matrix(1,0)+matrix(2,0)+matrix(3,0) 
		1:
			Limpiar Pantalla
			Escribir "Las ventas de la zona " vectorB(1) " fueron " matrix(0,1)+matrix(1,1)+matrix(2,1)+matrix(3,1) 
		2: 
			Limpiar Pantalla
			Escribir "Las ventas de la zona " vectorB(2) " fueron " matrix(0,2)+matrix(1,2)+matrix(2,2)+matrix(3,2) 
		3:
			Limpiar Pantalla
			Escribir "Las ventas de la zona " vectorB(3) " fueron " matrix(0,3)+matrix(1,3)+matrix(2,3)+matrix(3,3) 
		4:
			Limpiar Pantalla
			Escribir "Las ventas de la zona " vectorB(4) " fueron " matrix(0,4)+matrix(1,4)+matrix(2,4)+matrix(3,4) 
		De Otro Modo:
			Escribir "nada"
	Fin Segun
FinSubProceso

SubProceso totventasvendedor(matrix, vectorA, vectorB)
	definir i, j, aux, suma Como Entero 
	hacer 
	Escribir "Que vendeor quiere saber su total de ventas"
	para i<-0 Hasta 3 Hacer
		Escribir i+1, " " vectorA(i) sin saltar 
		escribir " "
	FinPara
	leer aux
	Mientras Que aux > 4 o aux < 1
	Segun aux-1 Hacer
		0:
			Limpiar Pantalla
			Escribir "El vededor " vectorA(0) " vendio en zona Norte: " matrix(0,0) " Sur: " matrix(0,1) " Este: " matrix(0,2) " Oeste: " matrix(0,3) " Centro: " matrix(0,4)
		1:
			Limpiar Pantalla
			Escribir "El vededor " vectorA(1) " vendio en zona Norte: " matrix(1,0) " Sur: " matrix(1,1) " Este: " matrix(1,2) " Oeste: " matrix(1,3) " Centro: " matrix(1,4)
		2: 
			Limpiar Pantalla
			Escribir "El vededor " vectorA(2) " vendio en zona Norte: " matrix(2,0) " Sur: " matrix(2,1) " Este: " matrix(2,2) " Oeste: " matrix(2,3) " Centro: " matrix(2,4) 
		3:
			Limpiar Pantalla
			Escribir "El vededor " vectorA(3) " vendio en zona Norte: " matrix(3,0) " Sur: " matrix(3,1) " Este: " matrix(3,2) " Oeste: " matrix(3,3) " Centro: " matrix(3,4)
		De Otro Modo:
			Escribir "nada"
	Fin Segun
FinSubProceso

SubProceso sumartodo(matrix)
	definir i, j, aux Como Entero
	aux=0
	para i<-0 Hasta 3 Hacer
		para j<-0 Hasta 4 Hacer
			aux=aux+matrix[i,j]
		FinPara
	FinPara
	escribir "El total de ventas fue " aux
FinSubProceso

	
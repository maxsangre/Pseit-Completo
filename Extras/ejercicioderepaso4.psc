////Realizar un programa con el siguiente menú y le pregunte al usuario que quiere hacer hasta
////que ingrese la opción Salir:
////	A. Llenar Vector A. Este vector es de tamaño N y se debe llenar de manera aleatoria
////	usando la función Aleatorio(valorMin, valorMax) de PseInt.
////	B. Llenar Vector B. Este vector también es de tamaño N y se llena de manera aleatoria.
////	C. Llenar Vector C con la suma de los vectores A y B. La suma se debe realizar elemento
////a elemento. Ejemplo: C = A + B
////	D. Llenar Vector C con la resta de los vectores B y A. La resta se debe realizar elemento a
////elemento. Ejemplo: C = B - A
////E. Mostrar. Esta opción debe permitir al usuario decidir qué vector quiere mostrar: Vector
////	A, B, o C.
////	F. Salir.
////NOTA: El rango de los números aleatorios para los Vectores será de [-100 a 100]. La longitud
////		para todos los vectores debe ser la misma, por lo tanto, esa información sólo se solicitará una
////vez.
Algoritmo sin_titulo
	menu()
FinAlgoritmo

SubProceso menu()
	Definir op Como Caracter
	Definir op1, n, i, vectorA, vectorB, vectorC Como Entero
	
	Escribir "Ingrese la dimension de los vectores"
	Leer n
	
	Dimension vectorA[n]
	Dimension vectorB[n]
	Dimension vectorC[n]

	Repetir
		Escribir "ingrese una opcion"
		Escribir "A. Llenar Vector A."
		Escribir "B. Llenar Vector B."
		Escribir "C. Llenar Vector C con la suma de los vectores A y B."
		Escribir "D. Llenar Vector C con la resta de los vectores B y A."
		Escribir "E. Mostrar: Vector A, B, o C."
		Escribir "F. Salir."
		leer op
		op= Minusculas(op)
		Segun op
			"a":
				llenarvector(vectorA,n)
				Limpiar Pantalla
				Escribir "Llenando vector A..."
				Esperar 2 Segundos
			"b":
				llenarvector(vectorB,n)
				Limpiar Pantalla
				Escribir "Llenando vector B..."
				Esperar 2 Segundos
			"c":
				para i = 0 Hasta n-1
					vectorC[i]= vectorA[i] + vectorB[i]
				FinPara
				Limpiar Pantalla
				Escribir "Llenando vector C..."
				Esperar 2 Segundos
			"d":
				para i = 0 Hasta n-1
					vectorC[i]= vectorB[i] - vectorA[i]
				FinPara
				Limpiar Pantalla
				Escribir "Llenando vector C..."
				Esperar 2 Segundos
			"e":
				Escribir "¿Que vector desea ver?"
				Escribir "1. Vector A"
				Escribir "2. Vector B"
				Escribir "3. Vector C"
				Leer op1
				Segun op1
					1:
						Limpiar Pantalla
						Escribir "Mostrando vector A..."
						Esperar 1 Segundos
						Mostrarvector(vectorA,n)
						Escribir ""
					2:
						Limpiar Pantalla
						Escribir "Mostrando vector B..."
						Esperar 1 Segundos
						Mostrarvector(vectorB,n)
						Escribir ""
					3:
						Limpiar Pantalla
						Escribir "Mostrando vector C..."
						Esperar 1 Segundos
						Mostrarvector(vectorC,n)
						Escribir ""
					De Otro Modo:
						Escribir "Error"
				FinSegun
			"f":
				Limpiar Pantalla
				Escribir "saliendo..."
				Esperar 2 Segundos
			De Otro Modo:
				Escribir "Error"
		FinSegun
	Mientras Que op != "f"
FinSubProceso

SubProceso Mostrarvector(vector,n)
	Definir i Como Entero
	Limpiar Pantalla
	para i = 0 Hasta n-1
		Escribir Sin Saltar "[", vector[i], "]"
	FinPara
	Escribir ""
FinSubProceso

SubProceso llenarvector(vector,n)
	Definir i Como Entero
	para i = 0 Hasta n-1
		vector[i]=Aleatorio(-100,100)
	FinPara
FinSubProceso

	
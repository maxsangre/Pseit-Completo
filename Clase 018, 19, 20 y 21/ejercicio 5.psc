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
	Definir long, vectorA, vectorB, vectorC, i, op1 Como Entero
	Definir op Como Caracter
	
	Escribir "Ingrese la longitud de los vectores"
	leer long
	Dimension vectorA[long]
	Dimension vectorB[long]
	Dimension vectorC[long]
	
	Repetir
		Escribir ""
		Escribir "Elija una opcion"
		Escribir ""
		Escribir "A. Llenar Vector A."
		Escribir "B. Llenar Vector B."
		Escribir "C. Llenar Vector C con la suma de los vectores A y B."
		Escribir "D. Llenar Vector C con la resta de los vectores B y A."
		Escribir "E. Mostrar: Vector A, B, o C."
		Escribir "F. Salir."
		Leer op
		op = Minusculas(op)
		Segun op
			"a":
				vector1(vectorA, long)
			"b":
				vector2(vectorB, long)
			"c":
				para i = 0 Hasta long-1
					vectorC[i] = (vectorA[i] + vectorB[i])
					///  5  0         3    0      2     0
					///  7  1         5    1      2     1
				FinPara
			"d":
				para i = 0 Hasta long-1
					vectorC[i] = (vectorB[i] - vectorA[i])
				FinPara
			"e":
				Escribir "¿Que vector desea ver?"
				Escribir "1. Vector A"
				Escribir "2. Vector B"
				Escribir "3. Vector C"
				Leer op1
				Segun op1
					3: 
						para i = 0 Hasta long-1
							si vectorC[i] != vectorC[long-1]
								Escribir Sin Saltar vectorC[i], ", "
							SiNo
								Escribir Sin Saltar vectorC[i]
							FinSi
						FinPara
					2:
						para i = 0 Hasta long-1
							si vectorB[i] != vectorB[long-1]
								Escribir Sin Saltar vectorB[i], ", "
							SiNo
								Escribir Sin Saltar vectorB[i]
							FinSi
						FinPara
					1:
						para i = 0 Hasta long-1
							si vectorA[i] != vectorA[long-1]
								Escribir Sin Saltar vectorA[i], ", "
							SiNo
								Escribir Sin Saltar vectorA[i]
							FinSi
						FinPara
					De Otro Modo:
						Escribir "Opcion incorrecta"
				FinSegun
			De Otro Modo:
				Escribir "Opcion incorrecta"
	    FinSegun
	Mientras Que op != "f"
	Escribir ""
	Escribir "Finalizando programa..."
FinSubProceso

SubProceso vector2(vectorB Por Referencia, long)
	Definir i Como Entero
	para i = 0 Hasta long-1
		vectorB[i] = Aleatorio(-100, 100)
	FinPara
FinSubProceso
/// long = 3
///        1 2 3
///        0 1 2

SubProceso vector1(vectorA Por Referencia, long)
	Definir i Como Entero
	para i = 0 Hasta long-1
		vectorA[i] = Aleatorio(-100, 100)
	FinPara
FinSubProceso
	
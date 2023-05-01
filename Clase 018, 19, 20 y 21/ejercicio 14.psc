////Programe una función que calcule el producto de un arreglo de números enteros. Para esto
////imagine, por ejemplo, que para un vector V de tamaño 4, el producto de todos los valores es
////igual a (V[1]*V[2]*V[3]*V[4])

Algoritmo sin_titulo
	vectores()
FinAlgoritmo

SubProceso vectores()
	Definir vector, i Como Entero
	Dimension vector[4]
	
	para i = 0 Hasta 3 
		vector[i] = Aleatorio(0, 20)
	FinPara
	
	Escribir "El producto de de un arreglo de números enteros: ", producto(vector)
FinSubProceso

Funcion retorno <- producto(vector Por Referencia )
	Definir retorno, i, suma Como Entero
	para i = 0 Hasta 3
		si i == 0
			suma = 1
		FinSi
		suma = (suma+i) * vector[i]
		retorno = suma
	FinPara
	
FinFuncion
	
////Crear una función que devuelva la diferencia que hay entre el valor más chico de un arreglo y
////su valor más grande.
Algoritmo sin_titulo
	vectores()
FinAlgoritmo

SubProceso vectores()
	Definir vector, i Como Entero
	Dimension vector[10]
	para i = 0 Hasta 9
		vector[i] = Aleatorio(0,20)
	FinPara
	Escribir "La diferencia entre el numero mas grande y el mas chico es de: ", diferencia(vector), " numeros"
FinSubProceso

Funcion retorno <- diferencia(vector)
	Definir retorno, i, nummax, nummin como entero
	
	para i = 0 Hasta 9
		si i == 0
			nummin = vector[0]
			nummax = vector[0]
		FinSi
		si vector[i] > nummax
			nummax = vector[i]
		FinSi
		si vector[i] < nummin
			nummin = vector[i]
		FinSi
	FinPara
	
	retorno = nummax - nummin
	
FinFuncion

	
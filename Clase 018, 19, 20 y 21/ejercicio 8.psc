////Crear un subproceso que rellene dos arreglos de tamaño n, con números aleatorios. Después,
////	hacer una función que reciba los dos arreglos y diga si todos sus valores son iguales o no. La
////			función debe devolver el resultado de esta validación, para mostrar el mensaje en el algoritmo.
////				Nota: recordar el uso de las variables de tipo lógico.
Algoritmo sin_titulo
    rellenar()	
FinAlgoritmo

SubProceso rellenar()
	Definir i, N, vector1, vector2 Como Entero
	Escribir "Ingrese la dimension del vector 1 y del vector 2"
	Leer N
	Dimension vector1[N]
	Dimension vector2[N]
	
	Para i = 0 Hasta  N - 1
		vector1[i] = Aleatorio(1, 2)
		vector2[i] = Aleatorio(1, 2)
	FinPara
	
	Escribir vector12(vector1,vector2, N)
FinSubProceso

Funcion retorno <- vector12(vector1 Por Referencia, vector2 Por Referencia, N Por Valor)
	Definir retorno Como Logico
	Definir i, contador Como Entero
	contador = 0
	Para i <- 0 hasta N-1 Hacer
		si vector1(i)=vector2(i) && contador < 1 Entonces
			retorno=verdadero
		sino 
			contador = contador + 1
			retorno=Falso
		FinSi
		Escribir ""
	FinPara
FinFuncion


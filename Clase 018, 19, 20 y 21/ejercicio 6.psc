////Realizar un programa que rellene un vector de tama�o N, con valores ingresados por el usua-
////rio. A continuaci�n, se deber� crear una funci�n que reciba el vector y devuelva el valor m�s
////
////grande del vector.
Algoritmo sin_titulo
	rellenar()
FinAlgoritmo
/// y = &&
/// 0 = ||
/// !=  == diferente a

SubProceso rellenar()
	Definir vector, long, i, num Como Entero
	Escribir "Ingrese el tama�o del vector"
	Leer long 
	Dimension vector[long]
	para i = 0 Hasta  long - 1
		Escribir "Ingrese un valor"
		Leer num 
		vector[i] = num
	FinPara
	Escribir ""
	Escribir "El numero mas grande es: ", nummax(vector, long)
FinSubProceso

funcion retorno <- nummax(vector, long)
	Definir retorno, i Como Entero
	retorno = vector[0]
	para i = 0 Hasta  long - 1
		si vector[i] > retorno Entonces
			retorno = vector[i]
		FinSi
	FinPara
FinFuncion

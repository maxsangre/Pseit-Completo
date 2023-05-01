Algoritmo sin_titulo
	Definir num1, num2 Como Entero
	Escribir "Ingrese dos numeros"
	Leer num1, num2
	///   5      4
	intercambio(num1, num2)
	Escribir num1, " y "  num2
	////        4            5
FinAlgoritmo

SubProceso intercambio (num1 Por Referencia , num2 Por Referencia )
	Definir aux Como Entero
	aux = num1
///  nulo   5
	num1 = num2
///  5     4
	num2 = aux
///  4      5
////	Escribir num1, " y "  num2
FinSubProceso

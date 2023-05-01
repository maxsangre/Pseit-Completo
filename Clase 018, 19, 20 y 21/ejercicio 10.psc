////Realizar un programa que rellene un vector de tamaño N, con valores ingresados por el
////usuario y muestre por pantalla el promedio de la suma de todos los valores ingresados.
Algoritmo sin_titulo
	promedio()
FinAlgoritmo

SubProceso promedio()
	Definir num, num1, vector, i Como entero
	Definir suma Como Real
	Escribir "Ingrese el tamaño del vector: ";
	Leer num;
	Escribir ""
	Dimension vector[num];
	suma = 0
	para i = 0 Hasta num-1
		Escribir "Ingrese un numero: ";
		Leer num1;
		vector[i] = num1
		suma = suma + vector[i]
		///      0       3
		///      3        2
		///      5        1  
	FinPara
	Escribir ""
	suma = suma / num
	Escribir "El promedio de la suma de todos los valores ingresados es: ", suma
	
FinSubProceso
	
////Realizar un programa que lea 10 números reales por teclado, los almacene en un arreglo y
////muestre por pantalla la suma, resta y multiplicación de todos los números ingresados al arre-
////glo.
Algoritmo sin_titulo
	vectorA()
FinAlgoritmo

SubProceso vectorA()
	Definir vector, i, j Como Entero
	Definir num, suma, resta, multiplicacion Como Real
	Dimension vector[10];
	multiplicacion = 1;
	suma = 0;
	resta = 0;
	para i = 0 Hasta 9 Hacer
		Escribir "Ingrese un valor Real";
		Leer num;
		vector[i] = num;
	FinPara
	
	para j = 0 Hasta 9;
		suma = suma + vector[j];
		resta = resta - vector[j];
		multiplicacion = multiplicacion * vector[j];
	FinPara

	Escribir ""
	Escribir "El resultado de la suma de los numeros ingresados es: ", suma;
	Escribir "El resultado de la resta de los numeros ingresados es: ", resta;
	Escribir "El resultado de la multiplicacion de los numeros ingresados es: ", multiplicacion;

FinSubProceso
	
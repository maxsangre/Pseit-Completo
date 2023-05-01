////Crear un vector que contenga 100 notas de 100 supuestos estudiantes, con valores entre 0 y
////20 generadas aleatoriamente mediante el uso de la función azar() o aleatorio() de PseInt.
////Luego, de acuerdo a las notas contenidas, el programa debe indicar cuántos estudiantes son:
////	a) Deficientes 0-5
////	b) Regulares 6-10
////	c) Buenos 11-15
////	d) Excelentes 16-20
Algoritmo sin_titulo
	notas()
FinAlgoritmo

SubProceso notas()
	Definir vector, i, sumaA, sumaB, sumaC, sumaD, num Como Entero
	sumaA = 0;
	sumaB = 0;
	sumaC = 0;
	sumaD = 0;
	Dimension vector[100];
	
	Para i = 0 Hasta 99;
		vector[i] = Aleatorio(0, 20);
		num = vector[i]
		si num >= 0 && num <= 5
			sumaA = sumaA + 1;
		FinSi
		si num >= 6 && num <= 10
			sumaB = sumaB + 1;
		FinSi
		si num >= 11 && num <= 15
			sumaC = sumaC + 1;
		FinSi
		si num >= 16 && num <= 20
			sumaD = sumaD + 1;
		FinSi
	FinPara
	Escribir "El numero de alumnos con nota entre 0-5 es de: ", sumaA;
	Escribir "El numero de alumnos con nota entre 6-10 es de: ", sumaB;
	Escribir "El numero de alumnos con nota entre 11-15 es de: ", sumaC;
	Escribir "El numero de alumnos con nota entre 16-20 es de: ", sumaD;
FinSubProceso
	
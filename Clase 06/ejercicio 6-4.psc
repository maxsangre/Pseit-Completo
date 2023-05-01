Algoritmo Correccion_SiAnidado
	Definir n1, n2, n3 Como Entero
	Escribir "MOSTRAR EL MAYOR DE 3 NÚMEROS"
	Escribir "INGRESE NÚMERO 01 : "
	leer n1
	Escribir "INGRESE NÚMERO 02 : "
	leer n2
	Escribir "INGRESE NÚMERO 03 : "
	Leer n3
	Si (n1 > n2 y n1 > n3) Entonces
		Escribir "El MAYOR ES ", n1
	SiNo
		si(n2 > n1 y n2 > n3) Entonces
			Escribir "EL MAYOR ES ", n2
		FinSi
		Si(n3 > n1 y n3 > n2) Entonces
			Escribir "El MAYOR ES ", n3
		FinSi
	FinSi
	
FinAlgoritmo
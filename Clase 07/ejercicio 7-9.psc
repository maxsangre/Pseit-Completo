Algoritmo sin_titulo
////	Calcular las calificaciones de un grupo de alumnos. La nota final de cada alumno se
////calcula seg�n el siguiente criterio: la parte pr�ctica vale el 10%; la parte de problemas vale
//////	el 50% y la parte te�rica el 40%. El programa leer� el nombre del alumno, las tres notas
//////	obtenidas, mostrar� el resultado por pantalla, y a continuaci�n volver� a pedir los datos del
//////	siguiente alumno hasta que el nombre sea una cadena vac�a. Las notas deben estar
//////	comprendidas entre 0 y 10, y si no est�n dentro de ese rango no se imprimir� el promedio
	//////		y se mostrar� un mensaje de error.
	
	definir nombre Como Caracter
	definir notap, notapro, notat, aux Como Real
	Escribir "Ingrese su nombre"
	leer nombre
	aux = 0
	Mientras nombre <> "" Hacer
		Escribir "ingrese la notas de la parte practica"
		leer notap
		Escribir "ingrese la notas de la parte de problemas"
		leer notapro
		Escribir "ingrese la notas de la parte teorica"
		leer notat
		si notap > 0 y notap <= 10 y notapro > 0 y notapro <= 10 y notat > 0 y notat <= 10  Entonces
			aux = (notap * 10 / 100) + (notapro * 50 / 100) + (notat * 40 / 100)
			Escribir "El promedio del alumno ", nombre, " es de ", aux
		sino 
			Escribir "ERROR"
		FinSi
		Escribir "Ingrese su nombre"
		leer nombre
	FinMientras
FinAlgoritmo

Algoritmo sin_titulo
////	Calcular las calificaciones de un grupo de alumnos. La nota final de cada alumno se
////calcula según el siguiente criterio: la parte práctica vale el 10%; la parte de problemas vale
//////	el 50% y la parte teórica el 40%. El programa leerá el nombre del alumno, las tres notas
//////	obtenidas, mostrará el resultado por pantalla, y a continuación volverá a pedir los datos del
//////	siguiente alumno hasta que el nombre sea una cadena vacía. Las notas deben estar
//////	comprendidas entre 0 y 10, y si no están dentro de ese rango no se imprimirá el promedio
	//////		y se mostrará un mensaje de error.
	
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

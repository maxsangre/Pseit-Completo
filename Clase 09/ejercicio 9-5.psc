Algoritmo sin_titulo
////	Un docente de Programación tiene un listado de 3 notas registradas por cada uno de sus
////	N estudiantes. La nota final se compone de un trabajo práctico Integrador (35%), una
////	Exposición (25%) y un Parcial (40%). El docente requiere los siguientes informes claves de
////    sus estudiantes:
////	§ Nota promedio final de los estudiantes que reprobaron el curso. Un estudiante
////	reprueba el curso si tiene una nota final inferior a 6.5 **
////		§ Porcentaje de alumnos que tienen una nota de integrador mayor a 7.5.**
////		§ La mayor nota obtenida en las exposiciones.**
////		§ Total de estudiantes que obtuvieron en el Parcial entre 4.0 y 7.5.
////		El programa pedirá la cantidad de alumnos que tiene el docente y en cada alumno pedirá
////		las 3 notas y calculará todos informes claves que requiere el docente.
	
	Definir i, alumnos, contadordesaprobados, contadoralumnos, contadorI, notaE, contadorP Como Entero
	Definir promediodesaprobados, notapromediofinal, integrador, exposicion, parcial, sumad, porcentajeI Como Real
	
	sumad = 0
	contadordesaprobados = 0
	contadoralumnos = 0
	contadorI = 0
	notaE = 0
	contadorP = 0
	
	Escribir "Ingrese el numero de alumnos"
	Leer alumnos
	Para i = 0 Hasta  alumnos-1 Con Paso  1 Hacer
		Escribir ""
		Escribir "Ingrese la nota del alumno ", i
		Escribir "Ingrese la nota del integrador"
		Leer integrador
		Escribir "Ingrese la nota del exposicion"
		Leer exposicion
		Escribir "Ingrese la nota del parcial"
		Leer parcial
		Escribir ""
		contadoralumnos = contadoralumnos + 1
		notapromediofinal = (integrador * 35 / 100) + (exposicion * 25 / 100) + (parcial * 40 / 100)
		si notapromediofinal < 6.5 Entonces
			contadordesaprobados = contadordesaprobados + 1
			sumad = sumad + notapromediofinal 
		FinSi
		si  integrador > 7.5 Entonces
			contadorI = contadorI + 1
		FinSi
		si exposicion > notaE Entonces
			notaE = exposicion
		FinSi
		si parcial >= 4.0 y parcial <= 7.5 Entonces
			contadorP = contadorP + 1 
		FinSi
	FinPara
	
	promediodesaprobados = sumad / contadordesaprobados
	Escribir "Nota promedio final de los estudiantes que reprobaron el curso es: ", promediodesaprobados
	porcentajeI = contadoralumnos /  contadorI
	Escribir "Porcentaje de alumnos que tienen una nota de integrador mayor a 7.5 es: ", porcentajeI
	Escribir "La mayor nota obtenida en las exposiciones es: ", notaE
	Escribir "Total de estudiantes que obtuvieron en el Parcial entre 4.0 y 7.5 es: ", contadorP
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
FinAlgoritmo

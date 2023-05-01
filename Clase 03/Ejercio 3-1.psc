Algoritmo sin_titulo
	/// actividad 1
	definir chicos Como Entero
	definir chicas Como Entero
	definir alumnos Como Entero
	definir porcent1 Como Real
	definir porcent2 Como Real
	Escribir "Insertar el numero de chicos en el aula: "
	Leer chicos
	Escribir "Insertar el numero de chicas en el aula: "
	Leer chicas
	alumnos = chicas + chicos
	porcent1 = chicas * 100 / alumnos
	porcent2 = chicos * 100 / alumnos
	Escribir ""
	Escribir "El porcentaje de chicos en el aula es: ", porcent2, "% y el porcentaje de chicas en el aula es: ", porcent1, "%"
	///actividad 2
	Escribir ""
	definir base Como Real
	Definir altura Como Real
	definir area Como Real
	Definir perimetro Como Real
	Escribir "Ingrese el valor de base: "
	Leer base
	Escribir "Ingrese el valor de altura: "
	Leer altura
	area = base * altura
	perimetro = 2 * altura + 2 * base
	Escribir ""
	Escribir "El area del rectangulo es: ", area
	Escribir "El perimetro del rectangulo es: ", perimetro
	///actividad 3
	Escribir ""
	definir radio Como Real
	definir altura1 Como Real
	definir volumen Como Real
	Escribir "Ingresar el radio del cilindro: "
	Leer radio
	Escribir "ingresar la altura del cilindro: "
	leer altura1
	volumen = pi * radio ^2 * altura1
	Escribir "El volumen es: ", volumen
	///actividad 4
	Escribir ""
	Definir dia Como Entero
	definir hora Como Entero
	definir minuto Como Entero
	definir seg Como Entero
	Escribir "Ingrese la cantidad de dias que desea convertir: "
	Leer dia
	hora = dia * 24
	minuto = dia * 1440
	seg = dia * 86400
	Escribir "La cantidad de horas es: ", hora
	Escribir "La cantidad de minutos es: ", minuto
	Escribir "La cantidad de segundos es: ", seg
	///actividad 5
	Escribir ""
	definir precio1 Como Real
	definir precio2 Como Real
	definir aumento Como Real
	definir resta Como Real
	Escribir "Ingrese el valor del producto a principio de año: "
	leer precio1
	Escribir "Ingrese el valor del producto a fin de año: "
	leer precio2
	resta = precio1 - precio2 * (-1)
	aumento = precio1 * 100 / resta
	Escribir ""
	Escribir "El porcentaje de aumento del producto es del ", aumento, "%"
	
	
FinAlgoritmo

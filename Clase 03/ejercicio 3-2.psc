Algoritmo sin_titulo
	/// ejercicio 1
	Definir nombre Como Caracter
	Escribir "Cual es tu nombre? "
	Leer nombre
	Escribir "¡¡Hola!! ", nombre
	/// ejercicio 2
	Escribir ""
	Definir pesos, euros, dolar Como Real
	Escribir "Ingresa el valor en pesos: "
	leer pesos
	euros = pesos / 206.03
	dolar = pesos / 192.37
	Escribir ""
	escribir "El valor en dolares es: ", dolar
	escribir "El valor en euros es: ", euros
	/// ejercicio 3
	Escribir ""
	definir salariobruto, salarioneto, salariototal Como Real
	Escribir "Ingrese su salario bruto: "
	leer salariobruto
	salarioneto = salariobruto * 20 / 100
	salariototal = salariobruto - salarioneto 
	Escribir ""
	Escribir "Su salario sera: ", salariototal
	
	///ejercicio 4
	Escribir ""
	definir seg, min, hs, dia Como Real
	Escribir "Ingrese un numero total de segundos: "
	leer seg
	min = seg / 60
	hs = seg / 3600
	dia = seg / 86400
	Escribir ""
	Escribir "El tiempo ingresado en minutos es: ", min
	Escribir "El tiempo ingresado en horas es: ", hs
	Escribir "El tiempo ingresado en dias es: ", dia
	/// ejercio 5
	Escribir ""
	definir base, altura, long, perimetro, area Como Real
	Escribir "Ingresar la longitud del rombo: "
	leer long
	Escribir "Ingresar la base del rombo: "
	leer base
	Escribir "Ingresar la altura del rombo: "
	leer altura
	perimetro = 4 * long
	area = base * altura
	Escribir ""
	Escribir "El perimetro del rombo es ", perimetro, " y el area ", area
	///Ejercicio 6
	Escribir ""
	Definir long1, apotema, area1, perimetro2 Como Real
	Escribir "Ingrese la longitud de una de las caras del hexagono: "
	leer long1
	Escribir "Ingrese el apotema del hexagono: "
	leer apotema
	perimetro2 = 6 * long1
	area1 = perimetro2 * apotema / 2
	Escribir ""
	Escribir "El perimetro del hexagono es ", perimetro2, " y el area es ", area1
	/// ejercicio 7
	Escribir ""
	definir long2, long3, base1, altura1, perimetro3, area2 Como Real
	Escribir "Ingrese el valor de la cara mas chica del palalelogramo: "
	leer long2
	Escribir "Ingrese el valor de la cara mas grande del paralelogramo: "
	leer long3
	base1 = long3
	Escribir "Ingrese el valor de la altura del paralelogramo: "
	leer altura1
	perimetro3 = 2 * (long2+long3)
	area2 = base1*altura1
	Escribir ""
	Escribir "El perimetro del paralelogramo es: ", perimetro3, " y el area ", area2
	/// ejercicio 8
	Escribir ""
	definir gradosf, gradosc Como Real
	Escribir "Ingresa la temperatura que desea convertir: "
	leer gradosf
	gradosc = (gradosf-32) * 5/9
	Escribir ""
	Escribir "La temperatura en Cº es ", gradosc
	/// ejercicio 9
	Escribir ""
	definir sueldob, comision, porcentaje, ss Como Real
	Escribir "Ingrese su sueldo base: "
	leer sueldob
	Escribir "Ingrese la cantidad de ventas hechas en el mes: "
	Leer comision
	porcentaje = (sueldob * 10 / 100) * comision
	ss = sueldob + porcentaje
	Escribir "Su comision por ventas es: ", porcentaje
	Escribir "Su sueldo total es: ", ss
	/// ejercicio 10
	Escribir ""
	Definir total, descuento, preciof Como Real
	Escribir "Ingrese el valor total: "
	Leer total
	descuento = (total * 15 / 100) 
	preciof = total - descuento
	Escribir ""
	Escribir "El valor con el descuento es: ", preciof
	///  ejercicio 11
	Escribir ""
	definir promedio, cf, tf, pc Como Real
	Escribir "Ingresar promedio de calificaciones parciales: "
	leer promedio
	Escribir "Ingresar calificacion de examen final: "
	leer cf
	Escribir "Ingresar nota de trabajo final: "
	leer tf
	pc = (promedio * 55 / 100) + (cf * 30 / 100) + (tf * 15 / 100) 
	Escribir ""
	Escribir "Su nota final es: ", pc
	/// ejercicio 12
	Escribir ""
	definir num1, num2, distancia Como Entero
	Escribir "Ingrese el primer numero: "
	Leer  num1
	Escribir "Ingrese el segundo numero: "
	Leer num2
	distancia = (num1 - num2) * (-1)
	Escribir ""
	Escribir "La distancia entre los numeros es: ", distancia
	/// ejercicio 13
	Escribir ""
	/// ejercio 14
	Escribir ""
	Definir num3, decena, unidad Como Entero
	Escribir "Ingrese un numero de dos cifras: "
	leer num3
	decena = trunc (num3 / 100)
	decena = decena % 10
	unidad = trunc (num3 / 10)
	unidad = unidad % 10
	Escribir "El numero inicial es: ", num3, " Y el numero invertido es: ", decena, unidad
	/// ejercio 15
	Escribir ""
	definir ciudadA, ciudadB Como Caracter
	Definir hh, mm, ss1, t Como Entero
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
FinAlgoritmo

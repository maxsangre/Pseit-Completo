////    Una compa��a de seguros tiene contratados a n vendedores. Cada vendedor realiza
////    m�ltiples ventas a la semana. La pol�tica de pagos de la compa��a es que cada vendedor
////    recibe un sueldo base m�s un 10% extra por comisiones de sus ventas. El gerente de la
////    compa��a desea saber, por un lado, cu�nto dinero deber� pagar en la semana a cada
////    vendedor por concepto de comisiones de las ventas realizadas, y por otro lado, cu�nto
////    deber� pagar a cada vendedor como sueldo total (sueldo base + comisiones). Para cada
////	vendedor ingresar cuanto es su sueldo base, cuantas ventas realiz� y cuanto cobr� por
////    cada venta.
Algoritmo sin_titulo
	
	Definir i, j, numempleados, ventasrealizadas Como Entero
	Definir extra, sueldobase, precioXventa, suma Como Real
	
	Escribir "Ingrese los empleados que tiene contratado"
	Leer numempleados
	
	Para i = 1 Hasta numempleados Hacer
		suma = 0
		Escribir ""
		Escribir "Ingrese los datos del empleado N�: ", i
		Escribir ""
		Escribir "Ingrese cuanto es su sueldo base"
		Leer sueldobase
		Escribir "ingrese cuantas ventas realiz�"
		Leer ventasrealizadas
		Escribir ""
		para j = 1 Hasta ventasrealizadas Hacer
			Escribir "Cuanto cobr� por cada venta?:"
			Leer precioXventa
			suma = suma  + precioXventa
			extra = (suma * 10 / 100)
		FinPara
		Escribir ""
		Escribir "Deber� pagar en la semana al vendedor ", i, " por concepto de comisiones: ", extra
		Escribir "Deber� pagar al vendedor ", i, " como sueldo total: ", (sueldobase + extra)
	FinPara
	
FinAlgoritmo

////    Una compañía de seguros tiene contratados a n vendedores. Cada vendedor realiza
////    múltiples ventas a la semana. La política de pagos de la compañía es que cada vendedor
////    recibe un sueldo base más un 10% extra por comisiones de sus ventas. El gerente de la
////    compañía desea saber, por un lado, cuánto dinero deberá pagar en la semana a cada
////    vendedor por concepto de comisiones de las ventas realizadas, y por otro lado, cuánto
////    deberá pagar a cada vendedor como sueldo total (sueldo base + comisiones). Para cada
////	vendedor ingresar cuanto es su sueldo base, cuantas ventas realizó y cuanto cobró por
////    cada venta.
Algoritmo sin_titulo
	
	Definir i, j, numempleados, ventasrealizadas Como Entero
	Definir extra, sueldobase, precioXventa, suma Como Real
	
	Escribir "Ingrese los empleados que tiene contratado"
	Leer numempleados
	
	Para i = 1 Hasta numempleados Hacer
		suma = 0
		Escribir ""
		Escribir "Ingrese los datos del empleado Nº: ", i
		Escribir ""
		Escribir "Ingrese cuanto es su sueldo base"
		Leer sueldobase
		Escribir "ingrese cuantas ventas realizó"
		Leer ventasrealizadas
		Escribir ""
		para j = 1 Hasta ventasrealizadas Hacer
			Escribir "Cuanto cobró por cada venta?:"
			Leer precioXventa
			suma = suma  + precioXventa
			extra = (suma * 10 / 100)
		FinPara
		Escribir ""
		Escribir "Deberá pagar en la semana al vendedor ", i, " por concepto de comisiones: ", extra
		Escribir "Deberá pagar al vendedor ", i, " como sueldo total: ", (sueldobase + extra)
	FinPara
	
FinAlgoritmo

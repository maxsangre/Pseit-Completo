Algoritmo sin_titulo
	definir contrato como cadena
	Definir ventas, shs, hst Como Real
	Escribir "Ingrese el tipo de contrato que tiene"
	Escribir "A) Comisión"
	Escribir "B) Salario fijo + Comisión"
	Escribir "C) Salario fijo"
	leer contrato
	contrato = Minusculas(contrato)
	si contrato == "a" Entonces
		Escribir "ingrese el monto total de ventas"
		Leer ventas
		ventas = ventas * 40 / 100
		Escribir ""
		Escribir "Su comisión por ventas es de: ", ventas
	SiNo
		si contrato == "b" Entonces
			Escribir "Ingrese su saldo por hora"
			leer shs
			Escribir "Ingrese la cantidad de horas trabajadas"
			leer hst
			Escribir "ingrese el monto total de ventas"
			Leer ventas
			si hst <= 40 Entonces
				shs = shs * hst
				ventas = ventas * 25 / 100
				Escribir "Su sueldo mas comisión es de: ", shs + ventas
			FinSi
		FinSi
	FinSi

	si contrato == "c" Entonces
		Escribir "Ingrese su saldo por hora"
		leer shs
		Escribir "Ingrese la cantidad de horas trabajadas"
		leer hst
		si hst > 40 Entonces
			shs = (shs * 40) + (((hst mod 40) *shs )* 50 / 100)
			Escribir "Su saldo con las horas extras es: ", shs
		SiNo
			si hst <= 40 Entonces
				shs = (shs * hst)
				Escribir "Su saldo es: ", shs
			FinSi
		FinSi
	FinSi
	


FinAlgoritmo

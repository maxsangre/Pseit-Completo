Funcion retorno <- salario (turno Por Referencia, horas Por Referencia, festivo Por Referencia )
	Definir retorno Como Entero
	si turno == "diurno" Entonces
		horas = horas * 90
		si festivo == "si" Entonces
			horas = (horas*10/100) + horas
			retorno = horas
		SiNo
			si festivo == "no" Entonces
				retorno = horas
			FinSi
		FinSi
	SiNo
		si turno == "nocturno" Entonces
			horas = horas * 125
			si festivo == "si" Entonces
				horas = (horas*15/100) + horas
				retorno = horas
			SiNo
				si festivo == "no" Entonces
					retorno = horas
				FinSi
			FinSi
		FinSi
	FinSi
	
Fin Funcion

Algoritmo sin_titulo
	Definir nombre, turno, festivo, dia Como Caracter
	Definir horas Como Entero
	Escribir "Ingrese su nombre"
	Leer nombre
	Escribir ""
	Escribir "Ingrese el dia de la semana"
	leer dia
	Escribir "Ingrese turno (Diurno/Nocturno)"
	Leer turno
	turno= Minusculas(turno)
	Escribir "ingrese la cantidad de horas trabajadas"
	Leer horas
	Escribir "El dia ", dia, " era festivo? (Si/No)"
	Leer festivo
	festivo= Minusculas(festivo)
	
	Escribir nombre, " su salario del dia ", dia, " sera: ", salario(turno, horas, festivo) 
FinAlgoritmo

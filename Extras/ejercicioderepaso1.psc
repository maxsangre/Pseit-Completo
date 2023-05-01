////Los empleados de una fábrica trabajan en dos turnos: Diurno y Nocturno. Se desea calcular el
////jornal diario de acuerdo con las siguientes reglas:
////	a) La tarifa de las horas diurnas es de $ 90
////	b) La tarifa de las horas nocturnas es de $ 125
////	c) En caso de ser feriado, la tarifa se incrementa en un 10% si el turno es diurno y en
////       un 15% si el turno es nocturno.
////			
////El programa debe solicitar la siguiente información al usuario: el nombre del trabajador, el día
////			
////de la semana, el turno (diurno o nocturno) y la cantidad de horas trabajadas. Además, debe-
////mos preguntarle al usuario si el día de la semana (lunes, martes, miércoles, etc.) era festivo o
////	
////no, para poder calcular el jornal diario. Utilice una función para realizar el cálculo.
Algoritmo sin_titulo
	Definir nombre, dia, turno, festivo Como Caracter
	Definir hora Como Entero
	
	Escribir "Ingrese su nombre "
	leer nombre
	
	Escribir "Ingrese el dia en el cual trabajo "
	leer dia
	
	Escribir "Ingrese la catidad de horas trabajadas"
	Leer hora
	
	Escribir "Ingrese su turno (Diurno/nocturno) "
	Leer turno
	turno = Minusculas(turno)
	
	Escribir "El dia, ", dia, " era festivo (Si/no)"
	Leer festivo
	festivo = Minusculas(festivo)
	
	Escribir "El salario del empleado " nombre, " en el dia ", dia, " es: ",  salario(hora, turno, festivo)
FinAlgoritmo

Funcion retorno <- salario(hora, turno, festivo)
	Definir retorno, salarioE Como Entero
	
	si turno == "diurno"
		si festivo == "si"
			salarioE = ((hora * 90) * 0.10) + (hora * 90)
			retorno = salarioE
		SiNo
			retorno = (hora * 90)
		FinSi
	FinSi
	si turno == "nocturno"
		si festivo == "si"
			salarioE = ((hora * 125) * 0.15) + (hora * 125)
			retorno = salarioE
		SiNo
			retorno = (hora * 125)
		FinSi
	FinSi
FinFuncion

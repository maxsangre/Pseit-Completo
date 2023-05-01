////Realice un algoritmo que solicite al usuario una fecha y muestre por pantalla la fecha anterior.
////	
////	Para ello se deberá utilizar un procedimiento llamado diaAnterior que reciba una fecha repre-
////		sentada a través de tres enteros dia, mes y anio, y retorne la fecha anterior. Puede asumir que
////		
////		dia, mes y anio representan una fecha válida. Realice pruebas de escritorio para los valores
////			dia=5, mes=10, anio=2012 y para dia=1, mes=3, anio=2004.
Algoritmo sin_titulo
	Definir day, month, year Como Entero
	
	Escribir "Ingrese una fecha (dd/mm/aaaa)";
	Leer day, month, year;
	Escribir "";
	diaAnterior(day, month, year);
FinAlgoritmo

SubProceso diaAnterior(day Por Referencia, month Por Referencia, year Por Referencia)
	day = day - 1;
	si day <= 0
		day = 31;
		month = month - 1;
		si month < 1
			month = 12;
			year = year -1;
		FinSi
		
	FinSi
	Escribir day, "/", month, "/", year
FinSubProceso
	
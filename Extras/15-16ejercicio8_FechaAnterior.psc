//8. Realice un algoritmo que solicite al usuario una fecha y muestre por pantalla la fecha anterior.
//Para ello se deberá utilizar un procedimiento llamado diaAnterior que reciba una fecha representada
//a través de tres enteros dia, mes y anio, y retorne la fecha anterior. Puede asumir que
//dia, mes y anio representan una fecha válida. Realice pruebas de escritorio para los valores
//dia=5, mes=10, anio=2012 y para dia=1, mes=3, anio=2004.
Algoritmo FechaAnterior
	definir dd, mm, yy Como Entero
	definir fecha, dd1, mm1, yy1 Como Caracter
	Escribir "Ingrese dia de la fecha"
	leer dd
	Escribir "Ingrese mes de la fecha"
	leer mm
	Escribir "Ingrese año de la fecha"
	leer yy
	dd1=ConvertirATexto(dd)
	mm1=ConvertirATexto(mm)
	yy1=ConvertirATexto(yy)
	escribir "La fecha ingresada es " Concatenar(dd1, Concatenar("-", Concatenar(mm1, Concatenar("-", yy1))))
	fecha=diaAnterior(dd, mm, yy)
	dd1=ConvertirATexto(dd)
	mm1=ConvertirATexto(mm)
	yy1=ConvertirATexto(yy)
	escribir "La fecha del dia anterior es " Concatenar(dd1, Concatenar("-", Concatenar(mm1, Concatenar("-", yy1))))
FinAlgoritmo

SubProceso fecha=diaAnterior(dd Por Referencia, mm Por Referencia, yy Por Referencia)
	definir ddaux, mmaux, yyaux Como Entero
	ddaux=dd-1
	mmaux=mm
	yyaux=yy
	Segun mmaux Hacer //30 dias trae Nov, Abr, Jun y Sept, los demas 31 y Feb = 28
		3:
			si ddaux=0 Entonces
				ddaux=28
				mmaux=mm-1
			FinSi
		12:
			si ddaux=0 Entonces
				ddaux=31
			FinSi
		5:
			si ddaux=0 Entonces
				ddaux=31
			FinSi
		7:
			si ddaux=0 Entonces
				ddaux=31
			FinSi
		10:
			si ddaux=0 Entonces
				ddaux=31
			FinSi
		De Otro Modo:
			si ddaux=0 Entonces
				ddaux=30
				mmaux=mm-1
			FinSi
	Fin Segun
	Si mmaux=0 Entonces
		mmaux=12
	FinSi
	dd=ddaux
	mm=mmaux
	yy=yyaux
FinSubProceso
	
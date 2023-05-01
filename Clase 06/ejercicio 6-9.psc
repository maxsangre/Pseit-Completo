Algoritmo sin_titulo
	Definir dia, mes, year Como Entero
	Escribir "Ingrese una fecha DD/MM/AAAA"
	leer dia, mes, year
	si dia >= 1 y dia <= 31 Entonces
		segun mes Hacer
			01:
				Escribir dia, " de Enero ", year
			02:
				Escribir dia, " de Febrero ", year
			03:
				Escribir dia, " de Marzo ", year
			04:
				Escribir dia, " de Abril ", year
			05:
				Escribir dia, " de Mayo ", year
			06:
				Escribir dia, " de Junio ", year
			07:
				Escribir dia, " de Julio ", year
			08:
				Escribir dia, " de Agosto ", year
			09:
				Escribir dia, " de Septiembre ", year
			10:
				Escribir dia, " de Ocutubre ", year
			11:
				Escribir dia, " de Noviembre ", year
			12:
				Escribir "de Diciembre ", year
			De Otro Modo:
				Escribir "Error"
		FinSegun
    sino 
		Escribir "Error"
	FinSi

FinAlgoritmo

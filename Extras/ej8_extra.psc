Funcion retorno <- EsCapicua(num Por Valor)
	Definir retorno Como Logico
	Definir cifra, inverso, original Como Entero
	
	retorno = falso
	inverso = 0
	original = num
	
	Mientras (original <> 0) Hacer
		cifra = original mod 10
		inverso = (inverso * 10) + (cifra)
		original = trunc(original/10)
	FinMientras
	
	Si(num == inverso) Entonces
		retorno = Verdadero
	FinSi
	
FinFuncion
Algoritmo ej8_extra
	Definir num Como Entero
	
	Escribir "Ingrese un numero para verificar si es capicua o no "
	
	leer num
	
	Si (EsCapicua(num)) Entonces
		Escribir  "El numero es capicua"
	SiNo
		Escribir "El numero no es capicua"
	FinSi
	
FinAlgoritmo

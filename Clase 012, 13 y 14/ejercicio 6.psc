Funcion retorno <- sumad ( num Por Referencia )
	Definir retorno, aux, i, suma Como Entero
	suma= 0
	para i = 1 Hasta num Hacer
		aux = (num mod i)
		si aux == 0 Entonces
			si aux <> num Entonces
				suma = suma + i
				retorno = suma
			FinSi
		FinSi
	FinPara
Fin Funcion
Algoritmo sin_titulo
	Definir num Como Entero
	Escribir "Ingrese un numero"
	Leer num
	Escribir ""
	Escribir "La suma de todos los divisores de ", num, " es: ", sumad(num)
	
FinAlgoritmo

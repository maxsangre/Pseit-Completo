Funcion retorno <- capicua ( num Por Referencia )
	Definir retorno Como Logico
	Definir decena, unidad Como Entero
	decena = trunc(num/100)
	unidad = (num mod 10)
	retorno = (decena == unidad)
Fin Funcion
Algoritmo sin_titulo
	Definir num Como entero
	Escribir "Ingrese un numero de tres digitos "
	Leer num
	
	Escribir "El numero es capicua? ", capicua(num)
FinAlgoritmo

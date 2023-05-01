Funcion retorno <- suma ( num Por Referencia )
	Definir retorno, decena, unidad Como Entero
	unidad = trunc(num/10)
	decena = (num mod 10) 
	retorno = unidad + decena
Fin Funcion
Algoritmo sin_titulo
	Definir num Como Entero
	
	Escribir "Ingrese un numero"
	Leer num
	
	Escribir "La suma de los digitos del numero ingresado es: ", suma(num)
	
FinAlgoritmo

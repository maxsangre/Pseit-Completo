Funcion retorno <- suma ( num Por Referencia )
	Definir  decena, unidad Como Entero
	Definir retorno Como Logico
	decena = trunc(num/10)
	unidad = (num mod 10) 
	retorno = (unidad mod 2 <> 0) y (decena mod 2 <> 0)
FinFuncion
Algoritmo sin_titulo
	
	Definir num Como Entero
	
	Escribir "Ingrese un numero"
	Leer num
	
	Escribir suma(num)
	
FinAlgoritmo

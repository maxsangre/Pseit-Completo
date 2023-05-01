Funcion retorno <- esmultiplo (num1 Por Referencia, num2 Por Referencia )
	Definir retorno Como logico
	retorno = (num2 mod num1 == 0)
Fin Funcion
Algoritmo sin_titulo
	Definir num1, num2 Como Entero
	
	Escribir "Ingrese un numero"
	Leer num1
	Escribir "Ingrese un numero"
	Leer num2
	
	Escribir "El numero ", num1, " es par del numero ",num2, " ? Esta afirmación es: ", esmultiplo(num1,num2)
FinAlgoritmo

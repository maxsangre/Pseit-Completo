Funcion retorno <- suma (num1 Por Referencia, num2 Por Referencia )
	Definir retorno Como Entero
	retorno = num1 + num2
Fin Funcion
Algoritmo sin_titulo
	Definir num1, num2, resultado Como Entero
	Escribir "Ingrese el primer numero"
	Leer num1
	Escribir "Ingrese el segundo numero"
	Leer num2
	resultado = suma(num1, num2)
	Escribir "La suma de los numeros ingresados es: ", resultado
FinAlgoritmo

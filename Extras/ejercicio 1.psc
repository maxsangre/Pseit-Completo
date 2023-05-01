////Implementar una función que permita obtener un número entero aleatorio comprendido
////entre dos límites que introduciremos por teclado. El número obtenido se debe mostrar por pantalla.
Funcion retorno <- alazar (num1 Por Referencia, num2 Por Referencia)
	Definir retorno Como Entero
	retorno = Aleatorio(num1, num2)
FinFuncion
Algoritmo sin_titulo
	Definir num1, num2, i Como Entero
	Escribir "Ingrese un numero de inicio y de limite"
	Leer  num1, num2
Para i = 0 Hasta 9 Hacer
	
	Escribir "El numero aleatrio es: ", alazar(num1, num2)
	
FinPara
	
FinAlgoritmo

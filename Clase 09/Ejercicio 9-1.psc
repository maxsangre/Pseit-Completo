Algoritmo sin_titulo
////	Escribir una estructura PARA que le solicite al usuario varios números y al finalizar muestre el
////	mayor número ingresado.
	
	Definir i, num, nummax como entero
	
	nummax = 0
	
	Para i = 0 Hasta 4 con paso 1 Hacer
		Escribir "ingrese un numero"
		Leer num
		si num > nummax Entonces
			nummax = num
		FinSi
	FinPara
	
	Escribir "El numero mayor es: ", nummax
FinAlgoritmo

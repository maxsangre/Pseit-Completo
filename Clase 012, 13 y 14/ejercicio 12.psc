Funcion retorno <- fino ( num Por Referencia )
	Definir retorno Como Entero
	retorno = (num-1) + (num-2) 	
	
Fin Funcion

Algoritmo sin_titulo
	Definir num, i Como Entero
	Escribir "Escribe un numero"
	Leer num
	para i = 1 Hasta num Hacer
		Escribir fino(i)
	FinPara
	
FinAlgoritmo

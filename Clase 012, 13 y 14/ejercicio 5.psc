Funcion retorno <- primo ( num Por Referencia )
	Definir retorno como logico
	Definir i, contador, aux Como Entero
	contador = 0
	aux = 0
	para i = 1 Hasta num Con Paso 1 Hacer
		aux = (num mod i) 
		si aux == 0 Entonces
			contador = contador + 1
			retorno = contador == 2
		FinSi
	FinPara
Fin Funcion
Algoritmo sin_titulo
	Definir num Como Entero
	
	Repetir
		Escribir "Ingrese un numero para saber si es primo: "
		Leer num
		Escribir "El numero ", num, " es primo? ", primo(num)
		Escribir ""
	Mientras Que primo(num) == Verdadero
FinAlgoritmo

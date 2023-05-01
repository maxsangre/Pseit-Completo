Algoritmo sin_titulo
////	Hacer un algoritmo para calcular la media de los números pares e impares, sólo se
////	ingresará diez números.
	
	Definir  num, contador, contador1, numpar, numimpar, i Como Entero
	definir promedio, promedio1 Como Real
	
	contador = 0
	contador1 = 0
	numpar = 0
	numimpar = 0
	i = 0
	
	Repetir
		Escribir "Ingrese un numero"
		leer num
		si (num mod 2 == 0) Entonces
			numpar = numpar + num
			contador = contador + 1
		SiNo
			numimpar = numimpar + num
			contador1 = contador1 + 1
		FinSi
		i = contador + contador1
	Mientras Que  i < 10
	
	promedio = numimpar / contador1
	promedio1 = numpar / contador
	Escribir "La media de lo numeros PARES es: ", promedio
	Escribir "La media de lo numeros IMPAREs es: ", promedio1
FinAlgoritmo

////Realizar un subproceso que reciba una letra y muestre un mensaje si esa letra esta entre las
////		letras ?M? y ?T?. Recordar que Pseint le da un valor numérico a cada letra a través del Código
////		Ascii, lo que nos deja usar operadores relacionales con letras y cadenas.
Algoritmo sin_titulo
	Definir letra Como Caracter
	Escribir "Ingrese una letra"
	Leer letra
	Escribir ""
	verificar(letra)
	
FinAlgoritmo

SubProceso verificar(letra Por Referencia)
	Si letra >= "m" && letra <= "t" 
		Escribir "La letra, " Mayusculas(letra), " esta entre m y t"
	SiNo
		Escribir "La letra, " Mayusculas(letra), " no esta entre m y t"
	FinSi
	
FinSubProceso
	
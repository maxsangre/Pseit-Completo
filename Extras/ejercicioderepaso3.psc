////Realizar un subproceso que reciba una letra y muestre un mensaje si esa letra esta entre las
////		letras ?M? y ?T?. Recordar que Pseint le da un valor numérico a cada letra a través del Código
////		Ascii, lo que nos deja usar operadores relacionales con letras y cadenas.
Algoritmo sin_titulo
	Definir letra Como Caracter
	Escribir "Ingrese una letra"
	leer letra
	
	validar(letra)
	
FinAlgoritmo

SubProceso validar(letra)
	si letra > "m" y letra < "t"
		Escribir "La letra se encuetra entre M y T"
	SiNo
		Escribir "La letra NO se encuetra entre M y T"
	FinSi
	
FinSubProceso
	
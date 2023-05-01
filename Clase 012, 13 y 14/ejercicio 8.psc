Funcion retorno <- login ( user Por Referencia, password Por Referencia, intentos Por Referencia )
	Definir retorno Como Logico
	retorno = user == "usuario1" y password == "asdasd" y intentos > 0
Fin Funcion

Algoritmo sin_titulo
	Definir user, password Como Caracter
	Definir intentos Como Entero
	intentos = 3
	
	Repetir
		Escribir "Ingrese usuario y contraseña"
		Leer user, password
		intentos = intentos - 1
		si login(user, password, intentos) == Falso Entonces
			Escribir "Te quedan ", intentos, " intentos"
		FinSi
	Mientras Que login(user, password, intentos) == Falso y intentos >0
	
	
FinAlgoritmo

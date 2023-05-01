Algoritmo sin_titulo
////	Teniendo en cuenta que la clave es "eureka", escribir un programa que nos pida ingresar
////	una clave. Sólo se cuenta con 3 intentos para acertar, si fallamos los 3 intentos se deberá
////    mostrar un mensaje indicándonos que hemos agotado esos 3 intentos. Si acertamos la
////	clave se deberá mostrar un mensaje que indique que se ha ingresado al sistema
////	correctamente.
	
	definir clave Como Caracter
	Definir intentos Como Entero
	
	intentos = 0
	
	Repetir
		Escribir "Ingrese la clave"
		Leer clave
		intentos = intentos + 1
		si clave = "eureka" y intentos < 3 Entonces
			Escribir "Se ha ingresado al sistema correctamente."
		SiNo
			si intentos > 3 y clave <> "eureka" Entonces
				Escribir "Acceso denegado"
			FinSi
		FinSi
		
	Mientras Que clave <> "eureka" y intentos <> 3
FinAlgoritmo

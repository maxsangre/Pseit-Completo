Algoritmo sin_titulo
////	Realizar un programa que solicite al usuario su c�digo de usuario (un n�mero entero
////	mayor que cero) y su contrase�a num�rica (otro n�mero entero positivo). El programa no le
////	debe permitir continuar hasta que introduzca como c�digo 1024 y como contrase�a 4567.
	////	El programa finaliza cuando ingresa los datos correctos.
	
	Definir user, password, u, p Como Entero
	user = 1024
	password = 4567
	
	Repetir
		Escribir "Ingrese su usuario"
		leer u
		Escribir "Ingrese su contrasenia"
		leer p
		
	Mientras Que u <> user y p <> password
FinAlgoritmo

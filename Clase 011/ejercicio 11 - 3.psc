////    Necesitamos crear un sistema para una máquina de reciclaje de botellas automática. Dicha
////	máquina nos pagará dinero por la cantidad de plástico reciclado. Tenemos que ingresar
////	nuestro usuario y contraseña para que se nos cargue el saldo por sistema a nuestra
////	cuenta.
////	? Condición simple anidada: validaremos que el usuario sea "Albus_D", luego si esto es
////	verdadero, validaremos si la contraseña es "caramelosDeLimon". Si la contraseña es
////	correcta haremos que una variable llamada Login sea verdadera.
////	? Bucle Mientras: Este bloque de validación de la contraseña lo encerraremos en un
////	bucle Mientras para darle al usuario sólo 3 intentos para poner la contraseña.
////	? Bucle Hacer Mientras(Repetir): Una vez que el login sea verdadero, accederemos al
////	menú de opciones:
////					o Ingresar botellas
////					o Consultar saldo
////					o Salir
////										
////	2
////	Ingresar Botellas: Primero preguntaremos cuántas botellas se va a ingresar al sistema.
////	una vez que tenemos el número vamos a usar un bucle para, a fin de ir ingresando
////	cada botella. En cada ciclo del bucle se debe generar un número aleatorio entre 100 y
////	3000 gr, que va a ser el peso de las botellas a reciclar (simulando que el usuario está
////	ingresando botellas en la máquina). Una vez generado, según el peso del material,
////	usaremos un condicional múltiple para asignarle un valor monetario:
////			o Si es menos de 500 gr, corresponden $50
////			o Si es entre 501 gr y 1500 gr, corresponden $125
////			o Si es más de 1501 gr, corresponden $200
////	Hecho esto, el programa debe informar al usuario por pantalla el valor que se le
////	ofrece. Si el usuario acepta, lo acreditamos a su saldo, sino se debe devolver el
////	material (sólo mostrar en pantalla "Devolviendo material"). Para esto usaremos un
////	condicional doble.
////	Consultar saldo: revisaremos el valor monetario que tiene asignada la variable "saldo".
////	Tanto al terminar "Ingresar Botellas" como "Consultar Saldo" debe volver al menú
////    principal.
Algoritmo sin_titulo
	Definir i, intentos, cantidadBotellas, precio, saldo, suma, suma1, suma2 Como Entero
	Definir user, password, op, respuesta Como Caracter
	Definir login Como Logico
	
	intentos = 2
	
	Escribir "***********************************************"
	Escribir "* Máquina de reciclaje de botellas automática *"
	Escribir "***********************************************"
	Escribir ""
	
	Escribir "* Ingrese su usuario."
	leer user
	Escribir "* Ingrese su contraseña."
	leer password
	login = (user == "Albus_D" y password == "caramelosDeLimon")
	Escribir ""
	
	mientras login <> Verdadero y intentos > 0 Hacer
		Escribir ""
		Escribir "* Ingrese su usuario."
		leer user
		Escribir "* Ingrese su contraseña."
		leer password
		login = (user == "Albus_D" y password == "caramelosDeLimon")
		Escribir ""
		si login y intentos > 0 Entonces
			Escribir "Ingresando..."
		SiNo
			Escribir "Usuario o contraseña incorrecto"
			intentos = intentos - 1
			Escribir "Te quedan ", intentos, " intentos"
		FinSi
		Escribir ""
	FinMientras
	
	si login == Verdadero Entonces
		Repetir
			Escribir "Selecione una opción"
			Escribir "1. Ingresar botellas"
			Escribir "2. Consultar saldo"
			Escribir "3. Salir"
			Leer op
			
			Si op == "1" Entonces
				suma = 0
				suma1 = 0
				suma2 = 0
				Escribir ""
				Escribir "¿Cuántas botellas se va a ingresar al sistema?"
				leer cantidadBotellas
				Para i = 0 Hasta cantidadBotellas-1 Hacer
					precio = Aleatorio(100, 3000)
					si precio < 500 Entonces
						suma = suma + 50
					SiNo
						si precio > 501 y precio < 1500 Entonces
							suma1 = suma1 + 125
						SiNo
							si precio > 1501 Entonces
								suma2 = suma2 + 200
							FinSi
						FinSi
					FinSi
				FinPara
				
				Escribir "El valor que se le ofrece por las botellas ingresadas es: ", suma + suma1 + suma2 
				Escribir ""
				Escribir "¿Desea acreditar la venta?"
				Leer respuesta
				respuesta = Minusculas(respuesta)
				si respuesta == "si" Entonces
					saldo = suma + suma1 + suma2
					Escribir "Acreditando su saldo..."
					Escribir ""
				SiNo
					si respuesta == "no" Entonces
						Escribir "Devolviendo material..."
						Escribir ""
					FinSi
				FinSi
			FinSi
			si op == "2" Entonces
				Escribir "Su saldo es: ", saldo
				Escribir ""
			FinSi
			
		Mientras Que op <> "3" 
	FinSi
	
FinAlgoritmo

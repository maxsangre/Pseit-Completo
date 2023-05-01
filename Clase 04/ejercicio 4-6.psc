Algoritmo sin_titulo
	Definir UserADMIN, passwordADMIN, user, password como cadena
    Definir  solicitudesEjecutivos, emails Como Entero
    Definir verInformes, HojaCalculo, Correo, SolicitudEmergencia, emailActualizado, apagar, einforme Como logico
    solicitudesEjecutivos = 3
    UserADMIN = 'admin'
    passwordADMIN = 'admin'
    Escribir "Para empezar debes Loguearte con un usuario adminstrador"
    Escribir "USUARIO: "
    Leer user
	user = Minusculas(user)
    Escribir "CONTRASEÑA: "
    Leer password
	password = Minusculas(password)
	si user = UserADMIN y password = passwordADMIN Entonces
		Escribir "Acceso concedido"
		Escribir "Desea ver informes de Marketing? V - si / F - no"
		leer verInformes
		si verInformes = Verdadero Entonces
			Escribir "Informes... "
			Escribir "Desea completar la hoja de calculos? "
			Leer HojaCalculo
			si HojaCalculo = Verdadero Entonces
				Escribir "Completando hojas de calculo"
			FinSi
		FinSi
		 Escribir "Desea revisar los correos electronicos?"
		 leer Correo
		 si Correo = Verdadero Entonces
			 escribir "Revisando correos..."
			 Escribir  "Cuantos correos hay?"
			 leer emails
			 si emails < 10 Entonces
				 Escribir "Revisando correos de voz... "
				 Escribir "Hay solicitudes de emergencia"
				 Leer SolicitudEmergencia
				 si SolicitudEmergencia = Verdadero Entonces
					 Escribir "Resolviendo solicitud"
					 Escribir "Resolviendo solicitud de ejecutivos"
					 Escribir "Desea enviar un informe?"
					 leer einforme
					 si einforme = Verdadero Entonces
						Escribir "Enviando informe..."
					SiNo
						escribir "El informe no se enviara y el desarrollo del dia se perdera."
					FinSi
					 Escribir "Desea apagar la computadora?"
					 leer apagar
					 Si apagar = Verdadero Entonces
						Escribir "Apagando sistema..."
					FinSi
					
					Escribir ""
					Escribir "Regar las plantas y luego ir a casa."
				sino 
					Escribir "Resolviendo solicitud de ejecutivos"
					Escribir "Desea enviar un informe?"
					leer einforme
					si einforme = Verdadero Entonces
						Escribir "Enviando informe..."
					SiNo
						escribir "El informe no se enviara y el desarrollo del dia se perdera."
					FinSi
					Escribir "Desea apagar la computadora?"
					leer apagar
					Si apagar = Verdadero Entonces
						Escribir "Apagando sistema..."
					FinSi
					
					Escribir ""
					Escribir "Regar las plantas y luego ir a casa."
				FinSi
			 
			 
				FinSi
			FinSi
		
	SiNo
		
		Escribir "Acceso denegado"
	FinSi
	
FinAlgoritmo

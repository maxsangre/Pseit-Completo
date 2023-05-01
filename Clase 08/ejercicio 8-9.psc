
//// Programar un juego donde la computadora elige un número al azar entre 1 y 10, y a
//// continuación el jugador tiene que adivinarlo. La estructura del programa es la siguiente:
//// 1o) El programa elige al azar un número n entre 1 y 10.
//// 2o) El usuario ingresa un número x.
//// 3o) Si x no es el número exacto, el programa indica si n es más grande o más pequeño que
//// el número ingresado.
//// 4o) Repetimos desde 2) hasta que x sea igual a n.
//// El programa tiene que imprimir los mensajes adecuados para informarle al usuario qué
//// hacer y qué pasó hasta que adivine el número.
//// NOTA: Para generar un número aleatorio entre 1 y 10 se puede utilizar la función
//// Aleatorio(limite_inferior, limite_superior) de PseInt.

Algoritmo juego_azar
	definir  num_secreto, num_ingresado Como Entero
	num_secreto <- Aleatorio(1, 10)   
	Repetir
		Escribir "Adivine el numero (de 1 a 10):"
		Leer num_ingresado
		si num_ingresado <> num_secreto Entonces
			Si num_secreto > num_ingresado Entonces
				Escribir "Muy bajo"
			Sino 
				Escribir "Muy alto"
			FinSi
		FinSi
		
	Mientras Que num_secreto <> num_ingresado
	
    Escribir "Exacto! Usted adivino el numero secreto, que era: ", num_secreto
	
FinAlgoritmo

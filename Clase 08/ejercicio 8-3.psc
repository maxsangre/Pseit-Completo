Algoritmo sin_titulo
////	Escribir un programa que lea n�meros enteros hasta teclear 0 (cero). Al finalizar el
////	programa se debe mostrar el m�ximo n�mero ingresado, el m�nimo, y el promedio de
////	todos ellos.
////	Para poder lograr, por ejemplo, el m�ximo inicializaremos una variable en cero llamada
////	numeroMaximo. Luego iremos comparando cada n�mero que se ingresa con esta variable.
////    si es mayor reemplazaremos el valor de numeroMaximo. Por ejemplo, si 5 > 0 entonces el
////	m�ximo entre estos n�meros ser� 5. Si luego ingreso el n�mero 2, se eval�a 2 > 5 lo que
	////	resultar� falso y por lo tanto el valor 5 de numeroMaximo no se reemplaza. Una l�gica
	////	similar tendr� el m�nimo.
	
	Definir nummax, nummin, num, contador, suma Como Entero
	Definir promedio Como Real
	contador = 0
	suma = 0
	Repetir
		Escribir "ingrese un numero"
		Leer num
		si contador = 0 Entonces
			nummax = num
			nummin = num
		FinSi
		si num <> 0 Entonces
			suma = suma + num
			si num > nummax Entonces
				nummax = num
			SiNo
				si num >= nummin Entonces
					nummin = num
				FinSi
			FinSi
			contador = contador + 1
			promedio = suma / contador
		FinSi
	Mientras Que num <> 0
	
	Escribir ""
	Escribir "El numero maximo es: ", nummax
	Escribir "El numero minimo es: ", nummin
	Escribir "El promedio es: ", promedio
	
FinAlgoritmo

////Realizar un programa que rellene un vector de tama�o N, con valores ingresados por el usua-
////rio. A continuaci�n, se debe buscar un elemento dentro del arreglo (el n�mero a buscar tam-
////bi�n debe ser ingresado por el usuario). El programa debe indicar la posici�n donde se en-
////cuentra el valor. En caso de que el n�mero se encuentre repetido dentro del arreglo se deben
////
////imprimir todas las posiciones donde se encuentra ese valor.
////Finalmente, en caso de que el n�mero a buscar no est� adentro del arreglo se debe mostrar
////un mensaje.
Algoritmo sin_titulo
   vectorA()	
FinAlgoritmo

SubProceso vectorA()
	Definir vector, num, numT, numB, contador, i Como Entero
	contador = 0
	Escribir "Ingrese el tama�o del vector"
	leer numT
	Dimension vector[numT]
	Escribir "Ingrese un numero a buscar"
	leer numB
	para i = 0 Hasta numT-1 Hacer
		Escribir "Ingrese un valor ";
		Leer num;
		vector[i] = num;
		si vector[i] <> numB
			contador = contador + 1
		sino
			contador = contador + 1
			Escribir Sin Saltar "El numero a buscar se encuentra en la posicion: ", contador
		FinSi
		Escribir ""
		si vector[i] <> numB y contador == numT
			Escribir "No se encontro el numero dentro del arreglo"
		FinSi
	FinPara
	
FinSubProceso
	
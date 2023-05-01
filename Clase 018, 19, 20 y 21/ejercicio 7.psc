////Disponemos de un vector unidimensional de 20 elementos de tipo carácter. Se pide desarro-
////llar un programa que:
////	
////	a) Pida una frase al usuario y luego ingrese la frase dentro del arreglo letra por letra.
////Ayuda: utilizar la función Subcadena de PSeInt.
////	
////	b) Una vez completado lo anterior, pedirle al usuario un carácter cualquiera y una posi-
////	ción dentro del arreglo, y el programa debe intentar ingresar el carácter en la posición
////	
////	indicada, si es que hay lugar (es decir la posición está vacía o es un espacio en
////	blanco). De ser posible debe mostrar el vector con la frase y el carácter ingresado, de
////	lo contrario debe darle un mensaje al usuario de que esa posición estaba ocupada.
////
Algoritmo sin_titulo
	vector()
FinAlgoritmo

SubProceso vector()
	Definir letra, frase, vectorU Como Caracter
	Definir num, i, j Como Entero
	Escribir "Ingrese un frase"
	Leer frase
	
	Dimension  vectorU[20]
	para i = 0 Hasta  19
		vectorU[i] = Subcadena(frase, i, i)
	FinPara
	
	Escribir ""
	Escribir "Selecciona una caracter"
	Leer letra
	Escribir "Selecciona un valor entre 0 y 19"
	Leer num
	//// 12 --------- 19
	/// y = &&
	/// o = ||
	si vectorU[num] == " " || vectorU[num] == "" 
		vectorU[num] = letra
		Para j = 0 Hasta 19
			Escribir Sin Saltar vectorU[j]
		FinPara
		Escribir ""
	SiNo
		Escribir ""
		Escribir "El espacio se encuentra ocupado"
		
	FinSi

FinSubProceso
	
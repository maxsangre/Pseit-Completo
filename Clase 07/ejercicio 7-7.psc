Algoritmo sin_titulo
	///Escriba un programa que solicite dos n�meros enteros (m�nimo y m�ximo). A continuaci�n,
	///se debe pedir al usuario que ingrese n�meros enteros situados entre el m�ximo y m�nimo.
	///Cada vez que un n�mero se encuentre entre ese intervalo, se sumara uno a una variable.
	///El programa terminar� cuando se escriba un n�mero que no pertenezca a ese intervalo, y
	///al finalizar se debe mostrar por pantalla la cantidad de n�meros ingresados dentro del
	///intervalo.
	
	Definir nummaximo, numminimo, aux, num Como Entero
	Escribir "Ingrese un numero maximo"
	Leer nummaximo
	Escribir "Ingrese un numero minimo"
	Leer numminimo
	Escribir "Ingrese un numero entero"
	Leer num
	aux = 1
	Mientras num > numminimo y num < nummaximo Hacer
		Escribir "Ingrese un numero entero"
		Leer num
		si num > numminimo y num < nummaximo Entonces
			aux = aux + 1
		sino 
			Escribir "La cantidad de numeros insertados dentro de nuestros valores es: ", aux
		FinSi
		
	FinMientras
	
	
FinAlgoritmo

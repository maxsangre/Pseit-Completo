Algoritmo sin_titulo
	//Construir un programa que simule un men� de opciones para realizar las cuatro
	//	operaciones aritm�ticas b�sicas (suma, resta, multiplicaci�n y divisi�n) con dos valores
	//	num�ricos enteros. El usuario, adem�s, debe especificar la operaci�n con el primer
	// car�cter de la operaci�n que desea realizar: ?S' o ?s? para la suma, ?R? o ?r? para la resta, ?M?
	//   ?m? para la multiplicaci�n y ?D? o ?d? para la divisi�n.
	Definir  op Como Caracter
	definir num, num1, operacion  Como real
	
	Escribir "Que operacion desea realizar?"
	Escribir "Suma = S"
	Escribir "Resta = R"
	Escribir "Multiplicacion = M"
	Escribir "Division = D"
	leer op
	op = Minusculas(op)
	si op = "s" Entonces
		Escribir "Ingrese el primer numero"
		Leer num
		Escribir "Ingrese el segundo numero"
		Leer num1
		operacion = num + num1
		Escribir "El resultado de la operacion es: ", operacion
	SiNo
		si op = "r" Entonces
			Escribir "Ingrese el primer numero"
			Leer num
			Escribir "Ingrese el segundo numero"
			Leer num1
			operacion = num - num1
			Escribir "El resultado de la operacion es: ", operacion
		sino
			si op = "m" Entonces
				Escribir "Ingrese el primer numero"
				Leer num
				Escribir "Ingrese el segundo numero"
				Leer num1
				operacion = num * num1
				Escribir "El resultado de la operacion es: ", operacion
			sino
				si op = "d" Entonces
					Escribir "Ingrese el primer numero"
					Leer num
					Escribir "Ingrese el segundo numero"
					Leer num1
					operacion = num / num1
					Escribir "El resultado de la operacion es: ", operacion
				FinSi
			FinSi
		FinSi
		
	FinSi
FinAlgoritmo

Algoritmo sin_titulo
	//Construir un programa que simule un menú de opciones para realizar las cuatro
	//	operaciones aritméticas básicas (suma, resta, multiplicación y división) con dos valores
	//	numéricos enteros. El usuario, además, debe especificar la operación con el primer
	// carácter de la operación que desea realizar: ?S' o ?s? para la suma, ?R? o ?r? para la resta, ?M?
	//   ?m? para la multiplicación y ?D? o ?d? para la división.
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

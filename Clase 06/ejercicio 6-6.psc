Algoritmo sin_titulo
	Definir num Como Entero
	Escribir "Ingrese un numero entero:"
	leer num
	si num == 0 Entonces
		Escribir "El numero NO es ni PAR, ni IMPAR"
	SiNo
		si (num mod 2 <> 0) Entonces
			Escribir "El numero es IMPAR"
		SiNo
			si (num mod 2 == 0) Entonces
				Escribir "El numero es PAR"
			FinSi
			
		FinSi
	FinSi
FinAlgoritmo

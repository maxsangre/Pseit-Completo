Algoritmo sin_titulo
	Definir tornillos, tornillosd Como Entero
	Escribir "Cuantos tornillos producio con defectos?"
	leer tornillosd
	Escribir "Cuantos tornillos producio sin defectos?"
	leer tornillos
	
	Si tornillosd > 200 y tornillos < 10000 Entonces
		Escribir "Grado de eficiencia 5"
	SiNo
		si tornillos > 10000 y tornillosd < 200 Entonces
			Escribir "Grado de eficiencia 8"
		SiNo
			si tornillos > 10000 Entonces
				Escribir "Grado de eficiencia 7"
			SiNo
				si tornillosd < 200 Entonces
					Escribir "Grado de eficiencia 6"
				FinSi
			FinSi
		FinSi
	FinSi
FinAlgoritmo

Algoritmo sin_titulo
	definir year Como Entero
	Escribir "Ingrese un año."
	leer year
	si (year mod 4 == 0) y (year mod 100 <> 0) Entonces
		Escribir "El año es bisiesto"
	     SiNo
		     si (year mod 100 == 0) y (year mod 400 == 0) Entonces
				 Escribir "El año es bisiesto"
				 
			 SiNo
				 Escribir "El año no es bisiesto"
		    FinSi
		 
	FinSi

	
	
	
FinAlgoritmo

Algoritmo sin_titulo
	definir year Como Entero
	Escribir "Ingrese un a�o."
	leer year
	si (year mod 4 == 0) y (year mod 100 <> 0) Entonces
		Escribir "El a�o es bisiesto"
	     SiNo
		     si (year mod 100 == 0) y (year mod 400 == 0) Entonces
				 Escribir "El a�o es bisiesto"
				 
			 SiNo
				 Escribir "El a�o no es bisiesto"
		    FinSi
		 
	FinSi

	
	
	
FinAlgoritmo

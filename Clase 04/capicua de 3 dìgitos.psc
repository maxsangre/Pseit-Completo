Algoritmo sin_titulo
	Definir centena,unidad,decena como entero	
	Escribir "Ingrese un numero de tres dígitos"
	leer centena 
	unidad = trunc(centena/100)
	decena = centena mod 10
	si unidad == decena Entonces
	Escribir "El numero ",centena, " es  capicua"	
SiNo
	Escribir "El numero ",centena, " no es capicua"	
FinSi                    
FinAlgoritmo

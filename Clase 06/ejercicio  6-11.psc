Algoritmo sin_titulo
	definir llantas, precio Como Entero
	Escribir "Cuantas llantas desea comprar?"
	leer llantas
	si llantas < 5 Entonces
		precio = llantas * 3000
		Escribir "El valor de las llantas es de 3000$ C/U, el valor total es de: ", precio
	SiNo
		si llantas > 5  y llantas < 10 Entonces
			precio = llantas * 2500 
			Escribir "El valor de las llantas es de 2500$ C/U, el valor total es de: ", precio
	    SiNo
		    si llantas > 10 Entonces
				precio = llantas * 2000
			    Escribir "El valor de las llantas es de 2000$ C/U, el valor total es de: ", precio
			FinSi
			
		FinSi
	FinSi
	


FinAlgoritmo

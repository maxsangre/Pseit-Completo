Algoritmo sin_titulo
	definir manzanas, precio, descuento Como real 
	Escribir "Ingrese cuantos kilos desea comprar"
	leer manzanas
	precio = 180 * manzanas
	si manzanas >= 0 y manzanas <= 2 Entonces
		Escribir "No hay descuentos el valor a pagar es de: ", precio
	SiNo
		si manzanas >= 2.01 y manzanas <= 5 Entonces
			descuento = precio - (precio * 10 / 100) 
			Escribir "Tiene un descuento del 10%, el total a pagar es de: ", descuento
		SiNo
			si manzanas >= 5.01 y manzanas <= 10 Entonces
				descuento = precio - (precio * 15 / 100) 
				Escribir "Tiene un descuento del 15%, el total a pagar es de: ", descuento
			SiNo
				si manzanas >= 10.01 Entonces
					descuento = precio - (precio * 20 / 100) 
					Escribir "Tiene un descuento del 20%, el total a pagar es de: ", descuento
				FinSi
			FinSi
		FinSi
	FinSi
FinAlgoritmo

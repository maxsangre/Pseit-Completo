Algoritmo sin_titulo
	Definir alquiler Como Logico
	definir hsa, nafe, precionaf, min, preciofin, total Como Real
	Escribir "********************************"
	Escribir "* Sistema de alquiler de autos *"
	Escribir "********************************"
	Escribir ""
	Escribir "¿Desea alquilar un vehiculo? V/F"
	Leer alquiler
	si alquiler == Verdadero entonces
		Escribir "Ingrese las horas que desea alquilar el vehiculo: "
		Leer hsa
		si hsa <= 2 Entonces
			Escribir ""
			Escribir "El valor que corresponde pagar es de $400 pesos y la nafta va de regalo."
		SiNo
			Escribir "Supero las 2hs"
			Escribir "Ingrese la cantidad de combustible consumido: "
			Leer nafe
			precionaf = nafe * 40
			min = hsa * 60
			preciofin = min * 5.20
			total = precionaf + preciofin
			Escribir "El precio de la nafta es: ", precionaf
			Escribir "El precio por exeder el horario es: ", preciofin
			Escribir "El total a pagar es: ", total
		FinSi
	SiNo
		Escribir "Que tenga buen dia :)"
	FinSi
FinAlgoritmo

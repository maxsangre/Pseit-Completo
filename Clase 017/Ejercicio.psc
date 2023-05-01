Algoritmo sin_titulo
	menu()
	Escribir ""
	
FinAlgoritmo

SubProceso menu()
	Definir ancho, largo, alto, espesor, num, superficie Como Real
	Escribir "*****************************"
	Escribir "* Calculadora de materiales *"
	Escribir "*****************************"
	Escribir ""
	Escribir "1. Calcular muro de ladrillo"
	Escribir "2. Calcular viga de hormigón"
	Escribir "3. Calcular columnas de hormigón"
	Escribir "4. Calcular contrapisos"
	Escribir "5. Calcular techo"
	Escribir "6. Calcular pisos"
	Escribir "7. Calcular pintura"
	Escribir "8. Calcular iluminación"
	Escribir "9. Salir"
	Leer num
	
	Repetir
		segun num
			1:
				Escribir "¿El muro será de 20 o 30 cm de espesor?"
				Leer ancho
				Escribir "Ingrese el largo de la pared"
				Leer largo
				Escribir "Ingrese el alto de la pared"
				Leer alto
				Escribir ""
				calcularMuro(ancho, largo, alto)
			2:
				Escribir "Ingrese el largo de la viga"
				Leer largo
				Escribir ""
				calcularViga(largo)
			3:
				Escribir "Ingrese el largo de la columna"
				Leer largo
				Escribir ""
				calcularColumna(largo)
			4:
				Escribir "Ingrese el espesor del contrapiso en mts"
				Leer espesor
				Escribir "Ingrese el largo de del contrapiso "
				Leer largo
				Escribir "Ingrese el ancho de del contrapiso"
				Leer ancho
				Escribir ""
				calcularContrapisos(espesor, largo, ancho)
				
			5:
				Escribir "Ingrese el espesor del techo en mts"
				Leer espesor
				Escribir "Ingrese el largo de del techo"
				Leer largo
				Escribir "Ingrese el ancho de del techo"
				Leer ancho
				Escribir ""
				calcularTecho(espesor, largo, ancho)
				
			6:
				Escribir "Ingrese el ancho del piso"
				Leer ancho
				Escribir "Ingrese el largo del piso"
				Leer largo
				Escribir ""
				calcularPisos(ancho, largo)
			7:
				Escribir "Ingrese la superficie del muro"
				leer superficie
				Escribir ""
				calcularPintura(superficie)
			8:
				Escribir "Ingrese la superficie del muro"
				leer superficie
				Escribir ""
				calcularIluminacion(superficie)
				
			De Otro Modo:
				Escribir "Opcion incorrecta"
	    FinSegun
		Escribir ""
		Escribir "1. Calcular muro de ladrillo"
		Escribir "2. Calcular viga de hormigón"
		Escribir "3. Calcular columnas de hormigón"
		Escribir "4. Calcular contrapisos"
		Escribir "5. Calcular techo"
		Escribir "6. Calcular pisos"
		Escribir "7. Calcular pintura"
		Escribir "8. Calcular iluminación"
		Escribir "9. Salir"
		Leer num
		Escribir ""
	Mientras Que num <> 9
FinSubProceso

SubProceso calcularIluminacion(superficie Por Referencia)
	Escribir "Necesita " (superficie*0.20) " m2 como cantidad minima de iluminacion"
FinSubProceso

SubProceso calcularPintura(superficie Por Referencia)
	Escribir "Necesita " (superficie/6) " L de pintura"
FinSubProceso

SubProceso calcularPisos(ancho Por Referencia, largo  Por Referencia)
	Definir extra, a, l Como Real
	extra = (calcularSuperficie(ancho, largo) * 10 / 100 ) + calcularSuperficie(ancho, largo)
	Escribir  "El total de m2 es de: ", extra
FinSubProceso

SubProceso calcularTecho(espesor Por Referencia, largo Por Referencia, ancho Por Referencia)
	Escribir Sin Saltar "Los materiales a usar son, " (calcularVolumen(largo, ancho, espesor) * 33)
	Escribir Sin Saltar " Kg de cemento, ", (calcularVolumen(largo, ancho, espesor) * 0.072), " m3 de arena, "
	Escribir Sin Saltar (calcularVolumen(largo, ancho, espesor) * 0.072), " m3 de piedra, "
	Escribir Sin Saltar (calcularVolumen(largo, ancho, espesor) * 7), " m de hierro del 8 y "
	Escribir Sin Saltar (calcularVolumen(largo, ancho, espesor) * 4), " m de hierro del 6."
	Escribir ""
FinSubProceso
	
SubProceso calcularContrapisos(espesor Por Referencia, largo Por Referencia, ancho Por Referencia)
		Escribir Sin Saltar "Los materiales a usar son, " (calcularVolumen(largo, ancho, espesor) * 105)
		Escribir Sin Saltar " Kg de cemento, ", (calcularVolumen(largo, ancho, espesor) * 0.45), " m3 de arena, y "
		Escribir Sin Saltar (calcularVolumen(largo, ancho, espesor) * 0.9), " m3 de piedra."
		Escribir ""
FinSubProceso

SubProceso calcularColumna(largo Por Referencia)
	Escribir Sin Saltar "Se necesita ", (largo * 7.5)  " kg de cemento, ", (largo * 0.016)
	Escribir Sin Saltar	" m3 de arena, ", (largo * 0.016), " m2 de piedra, ", (largo * 6)
	Escribir Sin Saltar " m de hierro del 10 y " (largo * 3) " m de hierro del 4."
	Escribir ""
FinSubProceso

SubProceso calcularViga(largo Por Referencia)
		Escribir Sin Saltar "Se necesita ", (largo * 9),  " kg de cemento, ", (largo* 0.02)
		Escribir Sin Saltar	" m3 de arena, ", (largo * 0.02), " m2 de piedra, ", (largo * 4)
		Escribir Sin Saltar " m de hierro del 8 y ", (largo * 3), " m de hierro del 4."
		Escribir ""
FinSubProceso



SubProceso calcularMuro(ancho Por Referencia, largo Por Referencia, alto Por Referencia)
	Segun ancho
		30:
			Escribir Sin Saltar "La superficie del muro es: ", calcularSuperficie(largo, alto) " m2 "
			Escribir Sin Saltar " y los materiales a usar son, " calcularSuperficie(largo, alto * 15.2) 
			Escribir Sin Saltar " Kg de cemento, " , (calcularSuperficie(largo, alto) * 0.115), " m3 de arena, y "
			Escribir Sin Saltar (calcularSuperficie(largo, alto) * 120) " ladrillos"
			Escribir ""
		20:
			Escribir Sin Saltar "La superficie del muro es: ", calcularSuperficie(largo, alto) " m2 "
			Escribir Sin Saltar " y los materiales a usar son, " (calcularSuperficie(largo, alto) * 10.9)
			Escribir Sin Saltar " Kg de cemento, ", (calcularSuperficie(largo, alto) * 0.09), " m3 de arena, y "
			Escribir Sin Saltar (calcularSuperficie(largo, alto) * 90), " ladrillos"
			Escribir ""
		De Otro Modo:
			Escribir "Ingreso un ancho invalido"
	FinSegun

FinSubProceso
	
funcion retorno <- calcularSuperficie(base, altura)
	Definir retorno Como Real
	retorno = (base*altura)
FinFuncion


Funcion retorno <- calcularVolumen(base, altura, ancho)
	Definir retorno Como Real
	retorno = (base*altura*ancho)
FinFuncion

	
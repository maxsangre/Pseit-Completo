Algoritmo sin_titulo
	Definir vectorA, vectorB, i, var Como Entero
	
	Dimension  vectorA[5]
	vectorA[0] = 1
	vectorA[1] = 2
	vectorA[2] = 3
	vectorA[3] = 4
	vectorA[4] = 5
	
	var = vectorA[2]
	Escribir var
	Escribir ""
	
	Escribir Sin Saltar vectorA[0]
	Escribir Sin Saltar vectorA[1] 
	Escribir Sin Saltar vectorA[2] 
	Escribir Sin Saltar vectorA[3] 
	Escribir Sin Saltar vectorA[4]
	Escribir ""
	
	Dimension vectorB[5]
	para i = 0 Hasta  4 Hacer
		vectorB[i] = 2+i
		Escribir Sin Saltar "[", vectorB[i], "]"
	FinPara
	
	Escribir ""
FinAlgoritmo





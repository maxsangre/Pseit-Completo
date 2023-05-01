////Realizar un programa que rellene dos vectores al mismo tiempo, con 5 valores aleatorios y los
////muestre por pantalla.
Algoritmo sin_titulo
	rellenar()
FinAlgoritmo

SubProceso rellenar()
	Definir vector1, vector2, i, j Como Entero
	
	Dimension vector1[5]
	Dimension vector2[5]
	
	Escribir "Primer vector: "
	para i = 0 Hasta 4 
		vector1[i] = Aleatorio(0, 100)
		vector2[i] = Aleatorio(0, 100)
		Escribir Sin Saltar vector1[i], " "
	FinPara
	Escribir ""
	Escribir "Segundo vector: "
	para j = 0 hasta 4
		Escribir Sin Saltar vector2[j], " "
	FinPara
	Escribir ""
FinSubProceso
	
////Define un vector que alojará números enteros y otro de cadena. Dimensiona ambos de la longitud
////que tu desees. Ahora en lapiz y papel, escribe la dimensión de tus vectores y sus subíndices.
Algoritmo sin_titulo
	Definir  i Como Entero
	Definir vector2, abecedario,vector1 Como Caracter
	Dimension vector1[5]
	Dimension vector2[26]
	abecedario="abcdefghijklmnopqrstuvwxyz"

	
	para i = 0 Hasta 25
		vector2[i]= Subcadena(abecedario,i,i)
	FinPara
	para i = 0 Hasta 4
		vector1[i]= vector2[azar(25)]
	FinPara
	
	para i = 0 Hasta 4
		Escribir Sin Saltar vector1[i], " "
	FinPara
	Escribir ""
FinAlgoritmo

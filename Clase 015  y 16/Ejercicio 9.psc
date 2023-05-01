////Diseñar un procedimiento que reciba una frase, y el programa remueva todas las vocales re-
////petidas. Al final el procedimiento mostrará la frase final.
////
////Por ejemplo:
////Entrada: ?Habia una vez un barco?
////Salida: ?Habi un vez n brco"
////	
////	Se marcan en rojo las repetidas sólo para explicar la consigna. Las vocales ?e?, ?i? y ?o? que-
////		dan al no estar repetidas.
Algoritmo sin_titulo
	Definir frase Como Caracter
	Escribir "Ingrese una palabra o frase"
	Leer frase
	
	vocalrepetida(frase)
	
FinAlgoritmo

SubProceso vocalrepetida(frase)
	Definir i, j, contadorA, contadorE, contadorI, contadorO, contadorU Como Entero
	contadorA = 0
	contadorE = 0
	contadorI = 0
	contadorO = 0
	contadorU = 0
	para i = 0 Hasta Longitud(frase)-1 Hacer
		
		si Subcadena(frase, i, i) == "a"
			contadorA = contadorA + 1
			si contadorA  > 1
				Escribir Sin Saltar ""
			SiNo
				Escribir Sin Saltar Subcadena(frase, i, i)
			FinSi
		FinSi
		si Subcadena(frase, i, i) == "e"
			contadorE = contadorE + 1
			si contadorE  > 1
				Escribir Sin Saltar ""
			SiNo
				Escribir Sin Saltar Subcadena(frase, i, i)
			FinSi
		FinSi
		si Subcadena(frase, i, i) == "i"
			contadorI = contadorI + 1
			si contadorI  > 1
				Escribir Sin Saltar ""
			SiNo
				Escribir Sin Saltar Subcadena(frase, i, i)
			FinSi
		FinSi
		si Subcadena(frase, i, i) == "o"
			contadorO = contadorO + 1
			si contadorO > 1
				Escribir Sin Saltar ""
			SiNo
				Escribir Sin Saltar Subcadena(frase, i, i)
			FinSi
		FinSi
		si Subcadena(frase, i, i) == "u"
			contadorU = contadorU + 1
			si contadorU  > 1
				Escribir Sin Saltar ""
			SiNo
				Escribir Sin Saltar Subcadena(frase, i, i)
			FinSi
		FinSi
		si Subcadena(frase, i, i) <> "a" && Subcadena(frase, i, i) <> "e" && Subcadena(frase, i, i) <> "i" && Subcadena(frase, i, i) <> "o" && Subcadena(frase, i, i) <> "u"
			Escribir Sin Saltar Subcadena(frase, i, i)
		FinSi
	FinPara
	Escribir ""
FinSubProceso

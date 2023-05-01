////Crea un programa que pida una frase al usuario y diga cuantas palabras contiene.
////(Ayudita! los espacios podrían funcionar como advertencia para los cortes de palabras)
//// Usar subprgramas!!
Algoritmo sin_titulo
	Definir n, i, contador Como Entero
	Definir vector, frase Como Caracter
	Repetir
		Limpiar Pantalla
		Escribir "Ingrese una frase"
		Leer frase
	Mientras Que Subcadena(frase, 0, Longitud(frase)-1) == " "
	contador = 0
	para i = 0 Hasta Longitud(frase)-1
		////                   12345 
		si Subcadena(frase, i, i) == " "
			///       01234
			contador = contador + 1
		FinSi
	FinPara
	Escribir ""
	si contador == 0
		Escribir "Hay ", contador, " palabras en la frase"
	sino
		si contador == 1
			Escribir "Hay ", contador, " palabras en la frase"
		SiNo
			Escribir "Hay ", contador+1, " palabras en la frase"
		FinSi
		
	FinSi
	si contador > 0
		Dimension vector[Longitud(frase)]
		contarvector(vector,frase)
	FinSi
FinAlgoritmo

SubProceso contarvector(vector, frase)
	Definir i, contador Como Entero
	contador = 0
	para i = 0 Hasta Longitud(frase)-1
		vector[i] = Subcadena(frase, i, i)
	FinPara
	para i = 0 Hasta Longitud(frase)-1
		si vector[i] == " " && vector[i+1] == " "
			vector[i+1] = vector[i+2]
		FinSi
		si vector[i] == " "
			contador = contador + 1
		FinSi
		Escribir Sin Saltar vector[i]
	FinPara
	Escribir ""
	si contador == 0
		Escribir "Hay ", contador, " palabras en la frase"
	sino
		si contador == 1
			Escribir "Hay ", contador, " palabras en la frase"
		SiNo
			Escribir "Hay ", contador+1, " palabras en la frase"
		FinSi
	FinSi
FinSubProceso
	